
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_tgdtor_param {int family; int net; } ;
struct synproxy_net {int dummy; } ;


 int nf_ct_netns_put (int ,int ) ;
 int nf_synproxy_ipv4_fini (struct synproxy_net*,int ) ;
 struct synproxy_net* synproxy_pernet (int ) ;

__attribute__((used)) static void synproxy_tg4_destroy(const struct xt_tgdtor_param *par)
{
 struct synproxy_net *snet = synproxy_pernet(par->net);

 nf_synproxy_ipv4_fini(snet, par->net);
 nf_ct_netns_put(par->net, par->family);
}
