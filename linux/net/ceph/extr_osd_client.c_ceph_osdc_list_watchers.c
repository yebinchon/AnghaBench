
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct page {int dummy; } ;
struct ceph_watch_item {int dummy; } ;
struct ceph_osd_request {TYPE_1__* r_ops; int r_flags; int r_base_oloc; int r_base_oid; } ;
struct ceph_osd_client {int dummy; } ;
struct ceph_object_locator {int dummy; } ;
struct ceph_object_id {int dummy; } ;
struct TYPE_2__ {int outdata_len; } ;


 int CEPH_OSD_FLAG_READ ;
 int CEPH_OSD_OP_LIST_WATCHERS ;
 int ENOMEM ;
 int GFP_NOIO ;
 scalar_t__ IS_ERR (struct page**) ;
 int PAGE_SIZE ;
 int PTR_ERR (struct page**) ;
 struct page** ceph_alloc_page_vector (int,int ) ;
 int ceph_oid_copy (int *,struct ceph_object_id*) ;
 int ceph_oloc_copy (int *,struct ceph_object_locator*) ;
 int ceph_osd_data_pages_init (int ,struct page**,int ,int ,int,int) ;
 int ceph_osdc_alloc_messages (struct ceph_osd_request*,int ) ;
 struct ceph_osd_request* ceph_osdc_alloc_request (struct ceph_osd_client*,int *,int,int,int ) ;
 int ceph_osdc_put_request (struct ceph_osd_request*) ;
 int ceph_osdc_start_request (struct ceph_osd_client*,struct ceph_osd_request*,int) ;
 int ceph_osdc_wait_request (struct ceph_osd_client*,struct ceph_osd_request*) ;
 int decode_watchers (void**,void* const,struct ceph_watch_item**,int *) ;
 int list_watchers ;
 int osd_req_op_data (struct ceph_osd_request*,int ,int ,int ) ;
 int osd_req_op_init (struct ceph_osd_request*,int ,int ,int ) ;
 void* page_address (struct page*) ;
 int response_data ;

int ceph_osdc_list_watchers(struct ceph_osd_client *osdc,
       struct ceph_object_id *oid,
       struct ceph_object_locator *oloc,
       struct ceph_watch_item **watchers,
       u32 *num_watchers)
{
 struct ceph_osd_request *req;
 struct page **pages;
 int ret;

 req = ceph_osdc_alloc_request(osdc, ((void*)0), 1, 0, GFP_NOIO);
 if (!req)
  return -ENOMEM;

 ceph_oid_copy(&req->r_base_oid, oid);
 ceph_oloc_copy(&req->r_base_oloc, oloc);
 req->r_flags = CEPH_OSD_FLAG_READ;

 pages = ceph_alloc_page_vector(1, GFP_NOIO);
 if (IS_ERR(pages)) {
  ret = PTR_ERR(pages);
  goto out_put_req;
 }

 osd_req_op_init(req, 0, CEPH_OSD_OP_LIST_WATCHERS, 0);
 ceph_osd_data_pages_init(osd_req_op_data(req, 0, list_watchers,
       response_data),
     pages, PAGE_SIZE, 0, 0, 1);

 ret = ceph_osdc_alloc_messages(req, GFP_NOIO);
 if (ret)
  goto out_put_req;

 ceph_osdc_start_request(osdc, req, 0);
 ret = ceph_osdc_wait_request(osdc, req);
 if (ret >= 0) {
  void *p = page_address(pages[0]);
  void *const end = p + req->r_ops[0].outdata_len;

  ret = decode_watchers(&p, end, watchers, num_watchers);
 }

out_put_req:
 ceph_osdc_put_request(req);
 return ret;
}
