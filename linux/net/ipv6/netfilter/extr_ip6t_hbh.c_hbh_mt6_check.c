
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_mtchk_param {struct ip6t_opts* matchinfo; } ;
struct ip6t_opts {int invflags; int flags; } ;


 int EINVAL ;
 int IP6T_OPTS_INV_MASK ;
 int IP6T_OPTS_NSTRICT ;
 int pr_debug (char*,...) ;

__attribute__((used)) static int hbh_mt6_check(const struct xt_mtchk_param *par)
{
 const struct ip6t_opts *optsinfo = par->matchinfo;

 if (optsinfo->invflags & ~IP6T_OPTS_INV_MASK) {
  pr_debug("unknown flags %X\n", optsinfo->invflags);
  return -EINVAL;
 }

 if (optsinfo->flags & IP6T_OPTS_NSTRICT) {
  pr_debug("Not strict - not implemented");
  return -EINVAL;
 }

 return 0;
}
