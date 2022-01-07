
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_mtchk_param {struct ip6t_frag* matchinfo; } ;
struct ip6t_frag {int invflags; } ;


 int EINVAL ;
 int IP6T_FRAG_INV_MASK ;
 int pr_debug (char*,int) ;

__attribute__((used)) static int frag_mt6_check(const struct xt_mtchk_param *par)
{
 const struct ip6t_frag *fraginfo = par->matchinfo;

 if (fraginfo->invflags & ~IP6T_FRAG_INV_MASK) {
  pr_debug("unknown flags %X\n", fraginfo->invflags);
  return -EINVAL;
 }
 return 0;
}
