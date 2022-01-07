
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipv6_pinfo {int ipv6_fl_list; } ;
struct ipv6_fl_socklist {int next; struct ip6_flowlabel* fl; } ;
struct ip6_flowlabel {int dummy; } ;


 int ip6_sk_fl_lock ;
 int rcu_assign_pointer (int ,struct ipv6_fl_socklist*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static inline void fl_link(struct ipv6_pinfo *np, struct ipv6_fl_socklist *sfl,
  struct ip6_flowlabel *fl)
{
 spin_lock_bh(&ip6_sk_fl_lock);
 sfl->fl = fl;
 sfl->next = np->ipv6_fl_list;
 rcu_assign_pointer(np->ipv6_fl_list, sfl);
 spin_unlock_bh(&ip6_sk_fl_lock);
}
