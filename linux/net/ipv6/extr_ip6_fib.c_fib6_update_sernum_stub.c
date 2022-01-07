
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net {int dummy; } ;
struct fib6_info {TYPE_1__* fib6_table; } ;
struct TYPE_2__ {int tb6_lock; } ;


 int fib6_update_sernum_upto_root (struct net*,struct fib6_info*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void fib6_update_sernum_stub(struct net *net, struct fib6_info *f6i)
{
 spin_lock_bh(&f6i->fib6_table->tb6_lock);
 fib6_update_sernum_upto_root(net, f6i);
 spin_unlock_bh(&f6i->fib6_table->tb6_lock);
}
