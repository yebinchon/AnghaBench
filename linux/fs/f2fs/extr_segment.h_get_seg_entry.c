
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sit_info {struct seg_entry* sentries; } ;
struct seg_entry {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;


 struct sit_info* SIT_I (struct f2fs_sb_info*) ;

__attribute__((used)) static inline struct seg_entry *get_seg_entry(struct f2fs_sb_info *sbi,
      unsigned int segno)
{
 struct sit_info *sit_i = SIT_I(sbi);
 return &sit_i->sentries[segno];
}
