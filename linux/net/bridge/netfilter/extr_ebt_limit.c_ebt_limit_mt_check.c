
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_mtchk_param {struct ebt_limit_info* matchinfo; } ;
struct ebt_limit_info {int burst; int avg; scalar_t__ cost; scalar_t__ credit_cap; scalar_t__ credit; int prev; } ;


 int EINVAL ;
 int jiffies ;
 int pr_info_ratelimited (char*,int,int) ;
 scalar_t__ user2credits (int) ;

__attribute__((used)) static int ebt_limit_mt_check(const struct xt_mtchk_param *par)
{
 struct ebt_limit_info *info = par->matchinfo;


 if (info->burst == 0 ||
     user2credits(info->avg * info->burst) < user2credits(info->avg)) {
  pr_info_ratelimited("overflow, try lower: %u/%u\n",
        info->avg, info->burst);
  return -EINVAL;
 }


 info->prev = jiffies;
 info->credit = user2credits(info->avg * info->burst);
 info->credit_cap = user2credits(info->avg * info->burst);
 info->cost = user2credits(info->avg);
 return 0;
}
