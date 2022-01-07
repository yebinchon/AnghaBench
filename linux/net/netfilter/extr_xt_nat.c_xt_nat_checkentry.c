
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_tgchk_param {int family; int net; } ;


 int nf_ct_netns_get (int ,int ) ;

__attribute__((used)) static int xt_nat_checkentry(const struct xt_tgchk_param *par)
{
 return nf_ct_netns_get(par->net, par->family);
}
