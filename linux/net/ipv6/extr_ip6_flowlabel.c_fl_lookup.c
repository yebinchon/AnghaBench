
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct ip6_flowlabel {int users; } ;
typedef int __be32 ;


 struct ip6_flowlabel* __fl_lookup (struct net*,int ) ;
 int atomic_inc_not_zero (int *) ;
 int rcu_read_lock_bh () ;
 int rcu_read_unlock_bh () ;

__attribute__((used)) static struct ip6_flowlabel *fl_lookup(struct net *net, __be32 label)
{
 struct ip6_flowlabel *fl;

 rcu_read_lock_bh();
 fl = __fl_lookup(net, label);
 if (fl && !atomic_inc_not_zero(&fl->users))
  fl = ((void*)0);
 rcu_read_unlock_bh();
 return fl;
}
