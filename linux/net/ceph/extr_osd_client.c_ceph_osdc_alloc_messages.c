
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_osd_request {int dummy; } ;
typedef int gfp_t ;


 int __ceph_osdc_alloc_messages (struct ceph_osd_request*,int ,int,int) ;
 int get_num_data_items (struct ceph_osd_request*,int*,int*) ;

int ceph_osdc_alloc_messages(struct ceph_osd_request *req, gfp_t gfp)
{
 int num_request_data_items, num_reply_data_items;

 get_num_data_items(req, &num_request_data_items, &num_reply_data_items);
 return __ceph_osdc_alloc_messages(req, gfp, num_request_data_items,
       num_reply_data_items);
}
