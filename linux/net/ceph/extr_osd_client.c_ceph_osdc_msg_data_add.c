
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct ceph_osd_data {scalar_t__ type; int bvec_pos; int bio_pos; int pagelist; int alignment; int pages; } ;
struct ceph_msg {int dummy; } ;


 int BUG_ON (int) ;
 scalar_t__ CEPH_OSD_DATA_TYPE_BIO ;
 scalar_t__ CEPH_OSD_DATA_TYPE_BVECS ;
 scalar_t__ CEPH_OSD_DATA_TYPE_NONE ;
 scalar_t__ CEPH_OSD_DATA_TYPE_PAGELIST ;
 scalar_t__ CEPH_OSD_DATA_TYPE_PAGES ;
 scalar_t__ SIZE_MAX ;
 int ceph_msg_data_add_bio (struct ceph_msg*,int *,scalar_t__) ;
 int ceph_msg_data_add_bvecs (struct ceph_msg*,int *) ;
 int ceph_msg_data_add_pagelist (struct ceph_msg*,int ) ;
 int ceph_msg_data_add_pages (struct ceph_msg*,int ,scalar_t__,int ) ;
 scalar_t__ ceph_osd_data_length (struct ceph_osd_data*) ;

__attribute__((used)) static void ceph_osdc_msg_data_add(struct ceph_msg *msg,
    struct ceph_osd_data *osd_data)
{
 u64 length = ceph_osd_data_length(osd_data);

 if (osd_data->type == CEPH_OSD_DATA_TYPE_PAGES) {
  BUG_ON(length > (u64) SIZE_MAX);
  if (length)
   ceph_msg_data_add_pages(msg, osd_data->pages,
     length, osd_data->alignment);
 } else if (osd_data->type == CEPH_OSD_DATA_TYPE_PAGELIST) {
  BUG_ON(!length);
  ceph_msg_data_add_pagelist(msg, osd_data->pagelist);




 } else if (osd_data->type == CEPH_OSD_DATA_TYPE_BVECS) {
  ceph_msg_data_add_bvecs(msg, &osd_data->bvec_pos);
 } else {
  BUG_ON(osd_data->type != CEPH_OSD_DATA_TYPE_NONE);
 }
}
