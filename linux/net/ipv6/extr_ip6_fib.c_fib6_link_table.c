
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * fib_table_hash; } ;
struct net {TYPE_1__ ipv6; } ;
struct fib6_table {int tb6_id; int tb6_hlist; int tb6_lock; } ;


 int FIB6_TABLE_HASHSZ ;
 int hlist_add_head_rcu (int *,int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void fib6_link_table(struct net *net, struct fib6_table *tb)
{
 unsigned int h;





 spin_lock_init(&tb->tb6_lock);
 h = tb->tb6_id & (FIB6_TABLE_HASHSZ - 1);





 hlist_add_head_rcu(&tb->tb6_hlist, &net->ipv6.fib_table_hash[h]);
}
