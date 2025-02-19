
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnfs_block_extent {scalar_t__ be_state; scalar_t__ be_f_offset; scalar_t__ be_length; } ;
struct layout_verification {scalar_t__ mode; scalar_t__ start; scalar_t__ cowread; scalar_t__ inval; } ;


 int EIO ;
 scalar_t__ IOMODE_READ ;
 scalar_t__ PNFS_BLOCK_INVALID_DATA ;
 scalar_t__ PNFS_BLOCK_READWRITE_DATA ;
 scalar_t__ PNFS_BLOCK_READ_DATA ;

__attribute__((used)) static int verify_extent(struct pnfs_block_extent *be,
    struct layout_verification *lv)
{
 if (lv->mode == IOMODE_READ) {
  if (be->be_state == PNFS_BLOCK_READWRITE_DATA ||
      be->be_state == PNFS_BLOCK_INVALID_DATA)
   return -EIO;
  if (be->be_f_offset != lv->start)
   return -EIO;
  lv->start += be->be_length;
  return 0;
 }

 if (be->be_state == PNFS_BLOCK_READWRITE_DATA) {
  if (be->be_f_offset != lv->start)
   return -EIO;
  if (lv->cowread > lv->start)
   return -EIO;
  lv->start += be->be_length;
  lv->inval = lv->start;
  return 0;
 } else if (be->be_state == PNFS_BLOCK_INVALID_DATA) {
  if (be->be_f_offset != lv->start)
   return -EIO;
  lv->start += be->be_length;
  return 0;
 } else if (be->be_state == PNFS_BLOCK_READ_DATA) {
  if (be->be_f_offset > lv->start)
   return -EIO;
  if (be->be_f_offset < lv->inval)
   return -EIO;
  if (be->be_f_offset < lv->cowread)
   return -EIO;



  lv->inval = lv->inval + be->be_length;
  lv->cowread = be->be_f_offset + be->be_length;
  return 0;
 } else
  return -EIO;
}
