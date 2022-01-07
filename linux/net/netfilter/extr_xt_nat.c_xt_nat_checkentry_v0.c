
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_tgchk_param {int family; int net; struct nf_nat_ipv4_multi_range_compat* targinfo; } ;
struct nf_nat_ipv4_multi_range_compat {int rangesize; } ;


 int EINVAL ;
 int nf_ct_netns_get (int ,int ) ;
 int pr_info_ratelimited (char*) ;

__attribute__((used)) static int xt_nat_checkentry_v0(const struct xt_tgchk_param *par)
{
 const struct nf_nat_ipv4_multi_range_compat *mr = par->targinfo;

 if (mr->rangesize != 1) {
  pr_info_ratelimited("multiple ranges no longer supported\n");
  return -EINVAL;
 }
 return nf_ct_netns_get(par->net, par->family);
}
