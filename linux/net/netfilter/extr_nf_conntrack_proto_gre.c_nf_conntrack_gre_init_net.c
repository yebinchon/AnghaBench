
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_gre_net {int * timeouts; int keymap_list; } ;
struct net {int dummy; } ;


 int GRE_CT_MAX ;
 int INIT_LIST_HEAD (int *) ;
 struct nf_gre_net* gre_pernet (struct net*) ;
 int * gre_timeouts ;

void nf_conntrack_gre_init_net(struct net *net)
{
 struct nf_gre_net *net_gre = gre_pernet(net);
 int i;

 INIT_LIST_HEAD(&net_gre->keymap_list);
 for (i = 0; i < GRE_CT_MAX; i++)
  net_gre->timeouts[i] = gre_timeouts[i];
}
