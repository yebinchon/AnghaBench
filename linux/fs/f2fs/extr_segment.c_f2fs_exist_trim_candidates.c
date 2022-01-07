
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct f2fs_sb_info {int dummy; } ;
struct cp_control {int trim_start; int trim_end; } ;
typedef int __u64 ;
struct TYPE_2__ {int sentry_lock; } ;


 TYPE_1__* SIT_I (struct f2fs_sb_info*) ;
 scalar_t__ add_discard_addrs (struct f2fs_sb_info*,struct cp_control*,int) ;
 int down_write (int *) ;
 int up_write (int *) ;

bool f2fs_exist_trim_candidates(struct f2fs_sb_info *sbi,
      struct cp_control *cpc)
{
 __u64 trim_start = cpc->trim_start;
 bool has_candidate = 0;

 down_write(&SIT_I(sbi)->sentry_lock);
 for (; cpc->trim_start <= cpc->trim_end; cpc->trim_start++) {
  if (add_discard_addrs(sbi, cpc, 1)) {
   has_candidate = 1;
   break;
  }
 }
 up_write(&SIT_I(sbi)->sentry_lock);

 cpc->trim_start = trim_start;
 return has_candidate;
}
