
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nl_info {struct net* nl_net; } ;
struct TYPE_2__ {struct fib6_info* fib6_null_entry; } ;
struct net {TYPE_1__ ipv6; } ;
struct fib6_table {int tb6_lock; } ;
struct fib6_info {struct fib6_table* fib6_table; } ;


 int ENOENT ;
 int fib6_del (struct fib6_info*,struct nl_info*) ;
 int fib6_info_release (struct fib6_info*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int __ip6_del_rt(struct fib6_info *rt, struct nl_info *info)
{
 struct net *net = info->nl_net;
 struct fib6_table *table;
 int err;

 if (rt == net->ipv6.fib6_null_entry) {
  err = -ENOENT;
  goto out;
 }

 table = rt->fib6_table;
 spin_lock_bh(&table->tb6_lock);
 err = fib6_del(rt, info);
 spin_unlock_bh(&table->tb6_lock);

out:
 fib6_info_release(rt);
 return err;
}
