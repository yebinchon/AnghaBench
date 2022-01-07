
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_mtchk_param {struct ipt_ah* matchinfo; } ;
struct ipt_ah {int invflags; } ;


 int EINVAL ;
 int IPT_AH_INV_MASK ;
 int pr_debug (char*,int) ;

__attribute__((used)) static int ah_mt_check(const struct xt_mtchk_param *par)
{
 const struct ipt_ah *ahinfo = par->matchinfo;


 if (ahinfo->invflags & ~IPT_AH_INV_MASK) {
  pr_debug("unknown flags %X\n", ahinfo->invflags);
  return -EINVAL;
 }
 return 0;
}
