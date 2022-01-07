
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int base_oloc; int base_oid; } ;
struct ceph_osd_linger_request {int is_watch; void* ping_req; void* reg_req; int mtime; TYPE_1__ t; int watch_valid_thru; void* data; int errcb; int wcb; } ;
struct ceph_osd_client {int dummy; } ;
struct ceph_object_locator {int dummy; } ;
struct ceph_object_id {int dummy; } ;
typedef int rados_watcherrcb_t ;
typedef int rados_watchcb2_t ;


 int CEPH_OSD_FLAG_WRITE ;
 int CEPH_OSD_WATCH_OP_PING ;
 int CEPH_OSD_WATCH_OP_WATCH ;
 int ENOMEM ;
 struct ceph_osd_linger_request* ERR_PTR (int) ;
 void* alloc_watch_request (struct ceph_osd_linger_request*,int ) ;
 int ceph_oid_copy (int *,struct ceph_object_id*) ;
 int ceph_oloc_copy (int *,struct ceph_object_locator*) ;
 int jiffies ;
 int ktime_get_real_ts64 (int *) ;
 struct ceph_osd_linger_request* linger_alloc (struct ceph_osd_client*) ;
 int linger_cancel (struct ceph_osd_linger_request*) ;
 int linger_put (struct ceph_osd_linger_request*) ;
 int linger_reg_commit_wait (struct ceph_osd_linger_request*) ;
 int linger_submit (struct ceph_osd_linger_request*) ;

struct ceph_osd_linger_request *
ceph_osdc_watch(struct ceph_osd_client *osdc,
  struct ceph_object_id *oid,
  struct ceph_object_locator *oloc,
  rados_watchcb2_t wcb,
  rados_watcherrcb_t errcb,
  void *data)
{
 struct ceph_osd_linger_request *lreq;
 int ret;

 lreq = linger_alloc(osdc);
 if (!lreq)
  return ERR_PTR(-ENOMEM);

 lreq->is_watch = 1;
 lreq->wcb = wcb;
 lreq->errcb = errcb;
 lreq->data = data;
 lreq->watch_valid_thru = jiffies;

 ceph_oid_copy(&lreq->t.base_oid, oid);
 ceph_oloc_copy(&lreq->t.base_oloc, oloc);
 lreq->t.flags = CEPH_OSD_FLAG_WRITE;
 ktime_get_real_ts64(&lreq->mtime);

 lreq->reg_req = alloc_watch_request(lreq, CEPH_OSD_WATCH_OP_WATCH);
 if (!lreq->reg_req) {
  ret = -ENOMEM;
  goto err_put_lreq;
 }

 lreq->ping_req = alloc_watch_request(lreq, CEPH_OSD_WATCH_OP_PING);
 if (!lreq->ping_req) {
  ret = -ENOMEM;
  goto err_put_lreq;
 }

 linger_submit(lreq);
 ret = linger_reg_commit_wait(lreq);
 if (ret) {
  linger_cancel(lreq);
  goto err_put_lreq;
 }

 return lreq;

err_put_lreq:
 linger_put(lreq);
 return ERR_PTR(ret);
}
