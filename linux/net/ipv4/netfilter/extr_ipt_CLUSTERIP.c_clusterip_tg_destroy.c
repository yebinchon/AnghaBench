
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_tgdtor_param {int family; int net; struct ipt_clusterip_tgt_info* targinfo; } ;
struct ipt_clusterip_tgt_info {int config; } ;


 int clusterip_config_entry_put (int ) ;
 int clusterip_config_put (int ) ;
 int nf_ct_netns_put (int ,int ) ;

__attribute__((used)) static void clusterip_tg_destroy(const struct xt_tgdtor_param *par)
{
 const struct ipt_clusterip_tgt_info *cipinfo = par->targinfo;



 clusterip_config_entry_put(cipinfo->config);

 clusterip_config_put(cipinfo->config);

 nf_ct_netns_put(par->net, par->family);
}
