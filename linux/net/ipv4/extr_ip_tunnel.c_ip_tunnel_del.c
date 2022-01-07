
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_tunnel_net {int collect_md_tun; } ;
struct ip_tunnel {int hash_node; scalar_t__ collect_md; } ;


 int hlist_del_init_rcu (int *) ;
 int rcu_assign_pointer (int ,int *) ;

__attribute__((used)) static void ip_tunnel_del(struct ip_tunnel_net *itn, struct ip_tunnel *t)
{
 if (t->collect_md)
  rcu_assign_pointer(itn->collect_md_tun, ((void*)0));
 hlist_del_init_rcu(&t->hash_node);
}
