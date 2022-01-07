
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ip6_flowlabel_net_ops ;
 int register_pernet_subsys (int *) ;

int ip6_flowlabel_init(void)
{
 return register_pernet_subsys(&ip6_flowlabel_net_ops);
}
