
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_tgchk_param {int family; int net; struct nf_nat_range2* targinfo; } ;
struct nf_nat_range2 {int flags; } ;


 int EINVAL ;
 int NF_NAT_RANGE_MAP_IPS ;
 int nf_ct_netns_get (int ,int ) ;

__attribute__((used)) static int redirect_tg6_checkentry(const struct xt_tgchk_param *par)
{
 const struct nf_nat_range2 *range = par->targinfo;

 if (range->flags & NF_NAT_RANGE_MAP_IPS)
  return -EINVAL;

 return nf_ct_netns_get(par->net, par->family);
}
