
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcf_block {int refcnt; } ;
struct net {int dummy; } ;


 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int refcount_inc_not_zero (int *) ;
 struct tcf_block* tcf_block_lookup (struct net*,int ) ;

__attribute__((used)) static struct tcf_block *tcf_block_refcnt_get(struct net *net, u32 block_index)
{
 struct tcf_block *block;

 rcu_read_lock();
 block = tcf_block_lookup(net, block_index);
 if (block && !refcount_inc_not_zero(&block->refcnt))
  block = ((void*)0);
 rcu_read_unlock();

 return block;
}
