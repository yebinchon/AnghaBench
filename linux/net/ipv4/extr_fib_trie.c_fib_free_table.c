
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fib_table {int rcu; } ;


 int __trie_free_rcu ;
 int call_rcu (int *,int ) ;

void fib_free_table(struct fib_table *tb)
{
 call_rcu(&tb->rcu, __trie_free_rcu);
}
