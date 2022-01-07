
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipv6_txoptions {scalar_t__ opt_flen; scalar_t__ opt_nflen; int tot_len; int dst1opt; int * srcrt; int * dst0opt; int * hopopt; } ;
struct ip6_flowlabel {struct ipv6_txoptions* opt; } ;



struct ipv6_txoptions *fl6_merge_options(struct ipv6_txoptions *opt_space,
      struct ip6_flowlabel *fl,
      struct ipv6_txoptions *fopt)
{
 struct ipv6_txoptions *fl_opt = fl->opt;

 if (!fopt || fopt->opt_flen == 0)
  return fl_opt;

 if (fl_opt) {
  opt_space->hopopt = fl_opt->hopopt;
  opt_space->dst0opt = fl_opt->dst0opt;
  opt_space->srcrt = fl_opt->srcrt;
  opt_space->opt_nflen = fl_opt->opt_nflen;
 } else {
  if (fopt->opt_nflen == 0)
   return fopt;
  opt_space->hopopt = ((void*)0);
  opt_space->dst0opt = ((void*)0);
  opt_space->srcrt = ((void*)0);
  opt_space->opt_nflen = 0;
 }
 opt_space->dst1opt = fopt->dst1opt;
 opt_space->opt_flen = fopt->opt_flen;
 opt_space->tot_len = fopt->tot_len;
 return opt_space;
}
