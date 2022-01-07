
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {size_t sk_protocol; } ;
struct netlink_table {unsigned int groups; int listeners; } ;
struct listeners {int masks; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 scalar_t__ NLGRPSZ (unsigned int) ;
 int kfree_rcu (struct listeners*,int ) ;
 struct listeners* kzalloc (scalar_t__,int ) ;
 int memcpy (int ,int ,scalar_t__) ;
 struct listeners* nl_deref_protected (int ) ;
 struct netlink_table* nl_table ;
 int rcu ;
 int rcu_assign_pointer (int ,struct listeners*) ;

int __netlink_change_ngroups(struct sock *sk, unsigned int groups)
{
 struct listeners *new, *old;
 struct netlink_table *tbl = &nl_table[sk->sk_protocol];

 if (groups < 32)
  groups = 32;

 if (NLGRPSZ(tbl->groups) < NLGRPSZ(groups)) {
  new = kzalloc(sizeof(*new) + NLGRPSZ(groups), GFP_ATOMIC);
  if (!new)
   return -ENOMEM;
  old = nl_deref_protected(tbl->listeners);
  memcpy(new->masks, old->masks, NLGRPSZ(tbl->groups));
  rcu_assign_pointer(tbl->listeners, new);

  kfree_rcu(old, rcu);
 }
 tbl->groups = groups;

 return 0;
}
