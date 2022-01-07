
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct reiserfs_transaction_handle {int t_trans_id; struct super_block* t_super; } ;
struct reiserfs_bitmap_info {int free_count; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_2__ {int stolen; int bmap; } ;


 int BUG_ON (int) ;
 int PROC_INFO_INC (struct super_block*,int ) ;
 int PUT_SB_FREE_BLOCKS (struct super_block*,scalar_t__) ;
 int RFALSE (int,char*,unsigned int,int) ;
 struct reiserfs_bitmap_info* SB_AP_BITMAP (struct super_block*) ;
 struct buffer_head* SB_BUFFER_WITH_SB (struct super_block*) ;
 scalar_t__ SB_FREE_BLOCKS (struct super_block*) ;
 int brelse (struct buffer_head*) ;
 scalar_t__ is_block_in_journal (struct super_block*,unsigned int,int,int*) ;
 int journal_mark_dirty (struct reiserfs_transaction_handle*,struct buffer_head*) ;
 int reiserfs_bmap_count (struct super_block*) ;
 int reiserfs_clear_le_bit (int,scalar_t__) ;
 int reiserfs_error (struct super_block*,char*,char*,unsigned int) ;
 int reiserfs_find_next_zero_le_bit (unsigned long*,int,int) ;
 int reiserfs_prepare_for_journal (struct super_block*,struct buffer_head*,int) ;
 struct buffer_head* reiserfs_read_bitmap_block (struct super_block*,unsigned int) ;
 int reiserfs_restore_prepared_buffer (struct super_block*,struct buffer_head*) ;
 scalar_t__ reiserfs_test_and_set_le_bit (int,scalar_t__) ;
 scalar_t__ reiserfs_test_le_bit (int,scalar_t__) ;
 TYPE_1__ scan_bitmap ;

__attribute__((used)) static int scan_bitmap_block(struct reiserfs_transaction_handle *th,
        unsigned int bmap_n, int *beg, int boundary,
        int min, int max, int unfm)
{
 struct super_block *s = th->t_super;
 struct reiserfs_bitmap_info *bi = &SB_AP_BITMAP(s)[bmap_n];
 struct buffer_head *bh;
 int end, next;
 int org = *beg;

 BUG_ON(!th->t_trans_id);
 RFALSE(bmap_n >= reiserfs_bmap_count(s), "Bitmap %u is out of "
        "range (0..%u)", bmap_n, reiserfs_bmap_count(s) - 1);
 PROC_INFO_INC(s, scan_bitmap.bmap);

 if (!bi) {
  reiserfs_error(s, "jdm-4055", "NULL bitmap info pointer "
          "for bitmap %d", bmap_n);
  return 0;
 }

 bh = reiserfs_read_bitmap_block(s, bmap_n);
 if (bh == ((void*)0))
  return 0;

 while (1) {
cont:
  if (bi->free_count < min) {
   brelse(bh);
   return 0;
  }


  *beg = reiserfs_find_next_zero_le_bit
      ((unsigned long *)(bh->b_data), boundary, *beg);





  if (*beg + min > boundary) {
   brelse(bh);
   return 0;
  }

  if (unfm && is_block_in_journal(s, bmap_n, *beg, beg))
   continue;

  for (end = *beg + 1;; end++) {
   if (end >= *beg + max || end >= boundary
       || reiserfs_test_le_bit(end, bh->b_data)) {
    next = end;
    break;
   }






   if (unfm && is_block_in_journal(s, bmap_n, end, &next))
    break;
  }







  if (end - *beg >= min) {
   int i;
   reiserfs_prepare_for_journal(s, bh, 1);




   for (i = *beg; i < end; i++) {

    if (reiserfs_test_and_set_le_bit
        (i, bh->b_data)) {




     PROC_INFO_INC(s, scan_bitmap.stolen);






     if (i >= *beg + min) {
      end = i;
      break;
     }





     while (--i >= *beg)
      reiserfs_clear_le_bit
          (i, bh->b_data);
     reiserfs_restore_prepared_buffer(s, bh);
     *beg = org;





     goto cont;
    }
   }
   bi->free_count -= (end - *beg);
   journal_mark_dirty(th, bh);
   brelse(bh);


   reiserfs_prepare_for_journal(s, SB_BUFFER_WITH_SB(s),
           1);
   PUT_SB_FREE_BLOCKS(s, SB_FREE_BLOCKS(s) - (end - *beg));
   journal_mark_dirty(th, SB_BUFFER_WITH_SB(s));

   return end - (*beg);
  } else {
   *beg = next;
  }
 }
}
