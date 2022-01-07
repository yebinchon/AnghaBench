
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_mtchk_param {struct ip6t_rt* matchinfo; } ;
struct ip6t_rt {int invflags; int flags; scalar_t__ rt_type; } ;


 int EINVAL ;
 int IP6T_RT_FST_MASK ;
 int IP6T_RT_INV_MASK ;
 int IP6T_RT_INV_TYP ;
 int IP6T_RT_RES ;
 int IP6T_RT_TYP ;
 int pr_debug (char*,...) ;

__attribute__((used)) static int rt_mt6_check(const struct xt_mtchk_param *par)
{
 const struct ip6t_rt *rtinfo = par->matchinfo;

 if (rtinfo->invflags & ~IP6T_RT_INV_MASK) {
  pr_debug("unknown flags %X\n", rtinfo->invflags);
  return -EINVAL;
 }
 if ((rtinfo->flags & (IP6T_RT_RES | IP6T_RT_FST_MASK)) &&
     (!(rtinfo->flags & IP6T_RT_TYP) ||
      (rtinfo->rt_type != 0) ||
      (rtinfo->invflags & IP6T_RT_INV_TYP))) {
  pr_debug("`--rt-type 0' required before `--rt-0-*'");
  return -EINVAL;
 }

 return 0;
}
