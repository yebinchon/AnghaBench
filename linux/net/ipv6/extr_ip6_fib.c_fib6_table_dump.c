
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct fib6_walker {int * root; } ;
struct fib6_table {int tb6_lock; int tb6_root; } ;


 int fib6_walk (struct net*,struct fib6_walker*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void fib6_table_dump(struct net *net, struct fib6_table *tb,
       struct fib6_walker *w)
{
 w->root = &tb->tb6_root;
 spin_lock_bh(&tb->tb6_lock);
 fib6_walk(net, w);
 spin_unlock_bh(&tb->tb6_lock);
}
