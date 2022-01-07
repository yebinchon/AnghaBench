
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seg_entry {int type; } ;
struct f2fs_sb_info {int dummy; } ;


 int __mark_sit_entry_dirty (struct f2fs_sb_info*,unsigned int) ;
 struct seg_entry* get_seg_entry (struct f2fs_sb_info*,unsigned int) ;

__attribute__((used)) static void __set_sit_entry_type(struct f2fs_sb_info *sbi, int type,
     unsigned int segno, int modified)
{
 struct seg_entry *se = get_seg_entry(sbi, segno);
 se->type = type;
 if (modified)
  __mark_sit_entry_dirty(sbi, segno);
}
