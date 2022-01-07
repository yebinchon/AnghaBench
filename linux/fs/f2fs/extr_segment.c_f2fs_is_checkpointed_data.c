
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sit_info {int sentry_lock; } ;
struct seg_entry {int ckpt_valid_map; } ;
struct f2fs_sb_info {int dummy; } ;
typedef int block_t ;


 unsigned int GET_BLKOFF_FROM_SEG0 (struct f2fs_sb_info*,int ) ;
 unsigned int GET_SEGNO (struct f2fs_sb_info*,int ) ;
 struct sit_info* SIT_I (struct f2fs_sb_info*) ;
 int __is_valid_data_blkaddr (int ) ;
 int down_read (int *) ;
 scalar_t__ f2fs_test_bit (unsigned int,int ) ;
 struct seg_entry* get_seg_entry (struct f2fs_sb_info*,unsigned int) ;
 int up_read (int *) ;

bool f2fs_is_checkpointed_data(struct f2fs_sb_info *sbi, block_t blkaddr)
{
 struct sit_info *sit_i = SIT_I(sbi);
 unsigned int segno, offset;
 struct seg_entry *se;
 bool is_cp = 0;

 if (!__is_valid_data_blkaddr(blkaddr))
  return 1;

 down_read(&sit_i->sentry_lock);

 segno = GET_SEGNO(sbi, blkaddr);
 se = get_seg_entry(sbi, segno);
 offset = GET_BLKOFF_FROM_SEG0(sbi, blkaddr);

 if (f2fs_test_bit(offset, se->ckpt_valid_map))
  is_cp = 1;

 up_read(&sit_i->sentry_lock);

 return is_cp;
}
