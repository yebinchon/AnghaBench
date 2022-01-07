
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ceph_osd_request {int r_mtime; int r_flags; int r_base_oloc; int r_base_oid; } ;
struct TYPE_4__ {int base_oloc; int base_oid; } ;
struct ceph_osd_linger_request {int linger_id; TYPE_2__ t; } ;
struct ceph_osd_client {TYPE_1__* client; } ;
struct ceph_options {int mount_timeout; } ;
struct TYPE_3__ {struct ceph_options* options; } ;


 int CEPH_OSD_FLAG_WRITE ;
 int CEPH_OSD_WATCH_OP_UNWATCH ;
 int ENOMEM ;
 int GFP_NOIO ;
 int ceph_oid_copy (int *,int *) ;
 int ceph_oloc_copy (int *,int *) ;
 int ceph_osdc_alloc_messages (struct ceph_osd_request*,int ) ;
 struct ceph_osd_request* ceph_osdc_alloc_request (struct ceph_osd_client*,int *,int,int,int ) ;
 int ceph_osdc_put_request (struct ceph_osd_request*) ;
 int ceph_osdc_start_request (struct ceph_osd_client*,struct ceph_osd_request*,int) ;
 int ktime_get_real_ts64 (int *) ;
 int linger_cancel (struct ceph_osd_linger_request*) ;
 int linger_put (struct ceph_osd_linger_request*) ;
 int osd_req_op_watch_init (struct ceph_osd_request*,int ,int ,int ) ;
 int wait_request_timeout (struct ceph_osd_request*,int ) ;

int ceph_osdc_unwatch(struct ceph_osd_client *osdc,
        struct ceph_osd_linger_request *lreq)
{
 struct ceph_options *opts = osdc->client->options;
 struct ceph_osd_request *req;
 int ret;

 req = ceph_osdc_alloc_request(osdc, ((void*)0), 1, 0, GFP_NOIO);
 if (!req)
  return -ENOMEM;

 ceph_oid_copy(&req->r_base_oid, &lreq->t.base_oid);
 ceph_oloc_copy(&req->r_base_oloc, &lreq->t.base_oloc);
 req->r_flags = CEPH_OSD_FLAG_WRITE;
 ktime_get_real_ts64(&req->r_mtime);
 osd_req_op_watch_init(req, 0, lreq->linger_id,
         CEPH_OSD_WATCH_OP_UNWATCH);

 ret = ceph_osdc_alloc_messages(req, GFP_NOIO);
 if (ret)
  goto out_put_req;

 ceph_osdc_start_request(osdc, req, 0);
 linger_cancel(lreq);
 linger_put(lreq);
 ret = wait_request_timeout(req, opts->mount_timeout);

out_put_req:
 ceph_osdc_put_request(req);
 return ret;
}
