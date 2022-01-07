
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_suballoc_result {int sr_bit_offset; int sr_bits; } ;
struct ocfs2_group_desc {void* bg_bitmap; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int BUG_ON (int) ;
 int ENOSPC ;
 int OCFS2_IS_VALID_GROUP_DESC (struct ocfs2_group_desc*) ;
 int ocfs2_find_next_zero_bit (void*,unsigned int,int) ;
 int ocfs2_test_bg_bit_allocatable (struct buffer_head*,int) ;

__attribute__((used)) static int ocfs2_block_group_find_clear_bits(struct ocfs2_super *osb,
          struct buffer_head *bg_bh,
          unsigned int bits_wanted,
          unsigned int total_bits,
          struct ocfs2_suballoc_result *res)
{
 void *bitmap;
 u16 best_offset, best_size;
 int offset, start, found, status = 0;
 struct ocfs2_group_desc *bg = (struct ocfs2_group_desc *) bg_bh->b_data;



 BUG_ON(!OCFS2_IS_VALID_GROUP_DESC(bg));

 found = start = best_offset = best_size = 0;
 bitmap = bg->bg_bitmap;

 while((offset = ocfs2_find_next_zero_bit(bitmap, total_bits, start)) != -1) {
  if (offset == total_bits)
   break;

  if (!ocfs2_test_bg_bit_allocatable(bg_bh, offset)) {


   found = 0;
   start = offset + 1;
  } else if (offset == start) {

   found++;

   start++;
  } else {

   found = 1;
   start = offset + 1;
  }
  if (found > best_size) {
   best_size = found;
   best_offset = start - found;
  }

  if (found == bits_wanted) {

   break;
  }
 }

 if (best_size) {
  res->sr_bit_offset = best_offset;
  res->sr_bits = best_size;
 } else {
  status = -ENOSPC;


 }

 return status;
}
