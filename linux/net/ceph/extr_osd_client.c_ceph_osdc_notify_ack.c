
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct ceph_osd_request {int r_flags; int r_base_oloc; int r_base_oid; } ;
struct ceph_osd_client {int dummy; } ;
struct ceph_object_locator {int dummy; } ;
struct ceph_object_id {int dummy; } ;


 int CEPH_OSD_FLAG_READ ;
 int ENOMEM ;
 int GFP_NOIO ;
 int ceph_oid_copy (int *,struct ceph_object_id*) ;
 int ceph_oloc_copy (int *,struct ceph_object_locator*) ;
 int ceph_osdc_alloc_messages (struct ceph_osd_request*,int ) ;
 struct ceph_osd_request* ceph_osdc_alloc_request (struct ceph_osd_client*,int *,int,int,int ) ;
 int ceph_osdc_put_request (struct ceph_osd_request*) ;
 int ceph_osdc_start_request (struct ceph_osd_client*,struct ceph_osd_request*,int) ;
 int ceph_osdc_wait_request (struct ceph_osd_client*,struct ceph_osd_request*) ;
 int osd_req_op_notify_ack_init (struct ceph_osd_request*,int ,int ,int ,void*,int ) ;

int ceph_osdc_notify_ack(struct ceph_osd_client *osdc,
    struct ceph_object_id *oid,
    struct ceph_object_locator *oloc,
    u64 notify_id,
    u64 cookie,
    void *payload,
    u32 payload_len)
{
 struct ceph_osd_request *req;
 int ret;

 req = ceph_osdc_alloc_request(osdc, ((void*)0), 1, 0, GFP_NOIO);
 if (!req)
  return -ENOMEM;

 ceph_oid_copy(&req->r_base_oid, oid);
 ceph_oloc_copy(&req->r_base_oloc, oloc);
 req->r_flags = CEPH_OSD_FLAG_READ;

 ret = osd_req_op_notify_ack_init(req, 0, notify_id, cookie, payload,
      payload_len);
 if (ret)
  goto out_put_req;

 ret = ceph_osdc_alloc_messages(req, GFP_NOIO);
 if (ret)
  goto out_put_req;

 ceph_osdc_start_request(osdc, req, 0);
 ret = ceph_osdc_wait_request(osdc, req);

out_put_req:
 ceph_osdc_put_request(req);
 return ret;
}
