
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipv6_txoptions {int * dst0opt; int opt_nflen; int srcrt; } ;


 scalar_t__ ipv6_optlen (int *) ;
 int memcpy (struct ipv6_txoptions*,struct ipv6_txoptions*,int) ;

struct ipv6_txoptions *ipv6_fixup_options(struct ipv6_txoptions *opt_space,
       struct ipv6_txoptions *opt)
{




 if (opt && opt->dst0opt && !opt->srcrt) {
  if (opt_space != opt) {
   memcpy(opt_space, opt, sizeof(*opt_space));
   opt = opt_space;
  }
  opt->opt_nflen -= ipv6_optlen(opt->dst0opt);
  opt->dst0opt = ((void*)0);
 }

 return opt;
}
