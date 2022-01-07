
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct page {int dummy; } ;
struct TYPE_2__ {int flags; int base_oloc; int base_oid; } ;
struct ceph_osd_linger_request {size_t* preply_len; int reg_req; TYPE_1__ t; struct page*** preply_pages; } ;
struct ceph_osd_client {int dummy; } ;
struct ceph_object_locator {int dummy; } ;
struct ceph_object_id {int dummy; } ;


 int CEPH_OSD_FLAG_READ ;
 int ENOMEM ;
 int GFP_NOIO ;
 scalar_t__ IS_ERR (struct page**) ;
 int PAGE_SIZE ;
 int PTR_ERR (struct page**) ;
 int WARN_ON (int) ;
 int alloc_linger_request (struct ceph_osd_linger_request*) ;
 struct page** ceph_alloc_page_vector (int,int ) ;
 int ceph_oid_copy (int *,struct ceph_object_id*) ;
 int ceph_oloc_copy (int *,struct ceph_object_locator*) ;
 int ceph_osd_data_pages_init (int ,struct page**,int ,int ,int,int) ;
 int ceph_osdc_alloc_messages (int ,int ) ;
 int dout (char*,struct ceph_osd_linger_request*,int) ;
 struct ceph_osd_linger_request* linger_alloc (struct ceph_osd_client*) ;
 int linger_cancel (struct ceph_osd_linger_request*) ;
 int linger_notify_finish_wait (struct ceph_osd_linger_request*) ;
 int linger_put (struct ceph_osd_linger_request*) ;
 int linger_reg_commit_wait (struct ceph_osd_linger_request*) ;
 int linger_submit (struct ceph_osd_linger_request*) ;
 int notify ;
 int osd_req_op_data (int ,int ,int ,int ) ;
 int osd_req_op_notify_init (int ,int ,int ,int,int ,void*,int ) ;
 int response_data ;

int ceph_osdc_notify(struct ceph_osd_client *osdc,
       struct ceph_object_id *oid,
       struct ceph_object_locator *oloc,
       void *payload,
       u32 payload_len,
       u32 timeout,
       struct page ***preply_pages,
       size_t *preply_len)
{
 struct ceph_osd_linger_request *lreq;
 struct page **pages;
 int ret;

 WARN_ON(!timeout);
 if (preply_pages) {
  *preply_pages = ((void*)0);
  *preply_len = 0;
 }

 lreq = linger_alloc(osdc);
 if (!lreq)
  return -ENOMEM;

 lreq->preply_pages = preply_pages;
 lreq->preply_len = preply_len;

 ceph_oid_copy(&lreq->t.base_oid, oid);
 ceph_oloc_copy(&lreq->t.base_oloc, oloc);
 lreq->t.flags = CEPH_OSD_FLAG_READ;

 lreq->reg_req = alloc_linger_request(lreq);
 if (!lreq->reg_req) {
  ret = -ENOMEM;
  goto out_put_lreq;
 }





 ret = osd_req_op_notify_init(lreq->reg_req, 0, 0, 1, timeout,
         payload, payload_len);
 if (ret)
  goto out_put_lreq;


 pages = ceph_alloc_page_vector(1, GFP_NOIO);
 if (IS_ERR(pages)) {
  ret = PTR_ERR(pages);
  goto out_put_lreq;
 }
 ceph_osd_data_pages_init(osd_req_op_data(lreq->reg_req, 0, notify,
       response_data),
     pages, PAGE_SIZE, 0, 0, 1);

 ret = ceph_osdc_alloc_messages(lreq->reg_req, GFP_NOIO);
 if (ret)
  goto out_put_lreq;

 linger_submit(lreq);
 ret = linger_reg_commit_wait(lreq);
 if (!ret)
  ret = linger_notify_finish_wait(lreq);
 else
  dout("lreq %p failed to initiate notify %d\n", lreq, ret);

 linger_cancel(lreq);
out_put_lreq:
 linger_put(lreq);
 return ret;
}
