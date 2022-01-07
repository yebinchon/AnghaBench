
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_tunnel_net {int collect_md_tun; } ;
struct ip_tunnel {int hash_node; scalar_t__ collect_md; int parms; } ;
struct hlist_head {int dummy; } ;


 int hlist_add_head_rcu (int *,struct hlist_head*) ;
 struct hlist_head* ip_bucket (struct ip_tunnel_net*,int *) ;
 int rcu_assign_pointer (int ,struct ip_tunnel*) ;

__attribute__((used)) static void ip_tunnel_add(struct ip_tunnel_net *itn, struct ip_tunnel *t)
{
 struct hlist_head *head = ip_bucket(itn, &t->parms);

 if (t->collect_md)
  rcu_assign_pointer(itn->collect_md_tun, t);
 hlist_add_head_rcu(&t->hash_node, head);
}
