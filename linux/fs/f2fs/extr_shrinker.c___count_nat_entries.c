
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct f2fs_sb_info {int dummy; } ;
struct TYPE_2__ {long nat_cnt; long dirty_nat_cnt; } ;


 TYPE_1__* NM_I (struct f2fs_sb_info*) ;

__attribute__((used)) static unsigned long __count_nat_entries(struct f2fs_sb_info *sbi)
{
 long count = NM_I(sbi)->nat_cnt - NM_I(sbi)->dirty_nat_cnt;

 return count > 0 ? count : 0;
}
