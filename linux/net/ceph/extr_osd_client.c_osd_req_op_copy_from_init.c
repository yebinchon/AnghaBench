
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef void* u64 ;
typedef int u32 ;
struct page {int dummy; } ;
struct ceph_osd_request {int dummy; } ;
struct TYPE_2__ {int osd_data; int src_fadvise_flags; int flags; void* src_version; void* snapid; } ;
struct ceph_osd_req_op {int indata_len; TYPE_1__ copy_from; } ;
struct ceph_object_locator {int dummy; } ;
struct ceph_object_id {int name_len; int name; } ;


 int CEPH_OSD_OP_COPY_FROM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct page**) ;
 int PAGE_SIZE ;
 int PTR_ERR (struct page**) ;
 struct ceph_osd_req_op* _osd_req_op_init (struct ceph_osd_request*,int ,int ,int ) ;
 struct page** ceph_alloc_page_vector (int,int ) ;
 int ceph_encode_string (void**,void*,int ,int ) ;
 int ceph_osd_data_pages_init (int *,struct page**,int,int ,int,int) ;
 int encode_oloc (void**,void*,struct ceph_object_locator*) ;
 void* page_address (struct page*) ;

__attribute__((used)) static int osd_req_op_copy_from_init(struct ceph_osd_request *req,
         u64 src_snapid, u64 src_version,
         struct ceph_object_id *src_oid,
         struct ceph_object_locator *src_oloc,
         u32 src_fadvise_flags,
         u32 dst_fadvise_flags,
         u8 copy_from_flags)
{
 struct ceph_osd_req_op *op;
 struct page **pages;
 void *p, *end;

 pages = ceph_alloc_page_vector(1, GFP_KERNEL);
 if (IS_ERR(pages))
  return PTR_ERR(pages);

 op = _osd_req_op_init(req, 0, CEPH_OSD_OP_COPY_FROM, dst_fadvise_flags);
 op->copy_from.snapid = src_snapid;
 op->copy_from.src_version = src_version;
 op->copy_from.flags = copy_from_flags;
 op->copy_from.src_fadvise_flags = src_fadvise_flags;

 p = page_address(pages[0]);
 end = p + PAGE_SIZE;
 ceph_encode_string(&p, end, src_oid->name, src_oid->name_len);
 encode_oloc(&p, end, src_oloc);
 op->indata_len = PAGE_SIZE - (end - p);

 ceph_osd_data_pages_init(&op->copy_from.osd_data, pages,
     op->indata_len, 0, 0, 1);
 return 0;
}
