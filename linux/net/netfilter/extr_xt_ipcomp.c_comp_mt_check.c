
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_mtchk_param {struct xt_ipcomp* matchinfo; } ;
struct xt_ipcomp {int invflags; } ;


 int EINVAL ;
 int XT_IPCOMP_INV_MASK ;
 int pr_info_ratelimited (char*,int) ;

__attribute__((used)) static int comp_mt_check(const struct xt_mtchk_param *par)
{
 const struct xt_ipcomp *compinfo = par->matchinfo;


 if (compinfo->invflags & ~XT_IPCOMP_INV_MASK) {
  pr_info_ratelimited("unknown flags %X\n", compinfo->invflags);
  return -EINVAL;
 }
 return 0;
}
