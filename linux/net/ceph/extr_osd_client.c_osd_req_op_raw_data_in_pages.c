
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct page {int dummy; } ;
struct ceph_osd_request {int dummy; } ;
struct ceph_osd_data {int dummy; } ;


 int ceph_osd_data_pages_init (struct ceph_osd_data*,struct page**,int ,int ,int,int) ;
 struct ceph_osd_data* osd_req_op_raw_data_in (struct ceph_osd_request*,unsigned int) ;

void osd_req_op_raw_data_in_pages(struct ceph_osd_request *osd_req,
   unsigned int which, struct page **pages,
   u64 length, u32 alignment,
   bool pages_from_pool, bool own_pages)
{
 struct ceph_osd_data *osd_data;

 osd_data = osd_req_op_raw_data_in(osd_req, which);
 ceph_osd_data_pages_init(osd_data, pages, length, alignment,
    pages_from_pool, own_pages);
}
