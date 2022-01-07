
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xt_tgchk_param {int family; int net; struct nf_nat_ipv4_multi_range_compat* targinfo; } ;
struct nf_nat_ipv4_multi_range_compat {int rangesize; TYPE_1__* range; } ;
struct TYPE_2__ {int flags; } ;


 int EINVAL ;
 int NF_NAT_RANGE_MAP_IPS ;
 int nf_ct_netns_get (int ,int ) ;
 int pr_debug (char*,...) ;

__attribute__((used)) static int redirect_tg4_check(const struct xt_tgchk_param *par)
{
 const struct nf_nat_ipv4_multi_range_compat *mr = par->targinfo;

 if (mr->range[0].flags & NF_NAT_RANGE_MAP_IPS) {
  pr_debug("bad MAP_IPS.\n");
  return -EINVAL;
 }
 if (mr->rangesize != 1) {
  pr_debug("bad rangesize %u.\n", mr->rangesize);
  return -EINVAL;
 }
 return nf_ct_netns_get(par->net, par->family);
}
