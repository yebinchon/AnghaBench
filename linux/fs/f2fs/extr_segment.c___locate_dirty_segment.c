
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seg_entry {int type; } ;
struct f2fs_sb_info {int dummy; } ;
struct dirty_seglist_info {int * nr_dirty; int * dirty_segmap; } ;
typedef enum dirty_type { ____Placeholder_dirty_type } dirty_type ;


 int DIRTY ;
 struct dirty_seglist_info* DIRTY_I (struct f2fs_sb_info*) ;
 scalar_t__ IS_CURSEG (struct f2fs_sb_info*,unsigned int) ;
 int f2fs_bug_on (struct f2fs_sb_info*,int) ;
 struct seg_entry* get_seg_entry (struct f2fs_sb_info*,unsigned int) ;
 int test_and_set_bit (unsigned int,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void __locate_dirty_segment(struct f2fs_sb_info *sbi, unsigned int segno,
  enum dirty_type dirty_type)
{
 struct dirty_seglist_info *dirty_i = DIRTY_I(sbi);


 if (IS_CURSEG(sbi, segno))
  return;

 if (!test_and_set_bit(segno, dirty_i->dirty_segmap[dirty_type]))
  dirty_i->nr_dirty[dirty_type]++;

 if (dirty_type == DIRTY) {
  struct seg_entry *sentry = get_seg_entry(sbi, segno);
  enum dirty_type t = sentry->type;

  if (unlikely(t >= DIRTY)) {
   f2fs_bug_on(sbi, 1);
   return;
  }
  if (!test_and_set_bit(segno, dirty_i->dirty_segmap[t]))
   dirty_i->nr_dirty[t]++;
 }
}
