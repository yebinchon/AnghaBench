
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct ceph_osd_request {unsigned int r_flags; TYPE_1__* r_ops; int r_base_oloc; int r_base_oid; } ;
struct ceph_osd_client {int dummy; } ;
struct ceph_object_locator {int dummy; } ;
struct ceph_object_id {int dummy; } ;
struct TYPE_2__ {int rval; size_t outdata_len; } ;


 int E2BIG ;
 int ENOMEM ;
 int GFP_NOIO ;
 size_t PAGE_SIZE ;
 int ceph_oid_copy (int *,struct ceph_object_id*) ;
 int ceph_oloc_copy (int *,struct ceph_object_locator*) ;
 int ceph_osdc_alloc_messages (struct ceph_osd_request*,int ) ;
 struct ceph_osd_request* ceph_osdc_alloc_request (struct ceph_osd_client*,int *,int,int,int ) ;
 int ceph_osdc_put_request (struct ceph_osd_request*) ;
 int ceph_osdc_start_request (struct ceph_osd_client*,struct ceph_osd_request*,int) ;
 int ceph_osdc_wait_request (struct ceph_osd_client*,struct ceph_osd_request*) ;
 int osd_req_op_cls_init (struct ceph_osd_request*,int ,char const*,char const*) ;
 int osd_req_op_cls_request_data_pages (struct ceph_osd_request*,int ,struct page**,size_t,int ,int,int) ;
 int osd_req_op_cls_response_data_pages (struct ceph_osd_request*,int ,struct page**,size_t,int ,int,int) ;

int ceph_osdc_call(struct ceph_osd_client *osdc,
     struct ceph_object_id *oid,
     struct ceph_object_locator *oloc,
     const char *class, const char *method,
     unsigned int flags,
     struct page *req_page, size_t req_len,
     struct page **resp_pages, size_t *resp_len)
{
 struct ceph_osd_request *req;
 int ret;

 if (req_len > PAGE_SIZE)
  return -E2BIG;

 req = ceph_osdc_alloc_request(osdc, ((void*)0), 1, 0, GFP_NOIO);
 if (!req)
  return -ENOMEM;

 ceph_oid_copy(&req->r_base_oid, oid);
 ceph_oloc_copy(&req->r_base_oloc, oloc);
 req->r_flags = flags;

 ret = osd_req_op_cls_init(req, 0, class, method);
 if (ret)
  goto out_put_req;

 if (req_page)
  osd_req_op_cls_request_data_pages(req, 0, &req_page, req_len,
        0, 0, 0);
 if (resp_pages)
  osd_req_op_cls_response_data_pages(req, 0, resp_pages,
         *resp_len, 0, 0, 0);

 ret = ceph_osdc_alloc_messages(req, GFP_NOIO);
 if (ret)
  goto out_put_req;

 ceph_osdc_start_request(osdc, req, 0);
 ret = ceph_osdc_wait_request(osdc, req);
 if (ret >= 0) {
  ret = req->r_ops[0].rval;
  if (resp_pages)
   *resp_len = req->r_ops[0].outdata_len;
 }

out_put_req:
 ceph_osdc_put_request(req);
 return ret;
}
