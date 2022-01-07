
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nl_info {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct fib6_table {int tb6_lock; int tb6_root; } ;
struct fib6_info {struct fib6_table* fib6_table; } ;


 int fib6_add (int *,struct fib6_info*,struct nl_info*,struct netlink_ext_ack*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int __ip6_ins_rt(struct fib6_info *rt, struct nl_info *info,
   struct netlink_ext_ack *extack)
{
 int err;
 struct fib6_table *table;

 table = rt->fib6_table;
 spin_lock_bh(&table->tb6_lock);
 err = fib6_add(&table->tb6_root, rt, info, extack);
 spin_unlock_bh(&table->tb6_lock);

 return err;
}
