
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct f2fs_sb_info {int dummy; } ;
struct TYPE_2__ {unsigned int segno; } ;


 int CURSEG_HOT_DATA ;
 TYPE_1__* CURSEG_I (struct f2fs_sb_info*,int) ;
 int NO_CHECK_TYPE ;

__attribute__((used)) static inline int __f2fs_get_curseg(struct f2fs_sb_info *sbi,
      unsigned int segno)
{
 int i;

 for (i = CURSEG_HOT_DATA; i < NO_CHECK_TYPE; i++) {
  if (CURSEG_I(sbi, i)->segno == segno)
   break;
 }
 return i;
}
