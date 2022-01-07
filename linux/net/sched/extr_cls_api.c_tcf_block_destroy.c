
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_block {int proto_destroy_lock; int lock; } ;


 int kfree_rcu (struct tcf_block*,int ) ;
 int mutex_destroy (int *) ;
 int rcu ;

__attribute__((used)) static void tcf_block_destroy(struct tcf_block *block)
{
 mutex_destroy(&block->lock);
 mutex_destroy(&block->proto_destroy_lock);
 kfree_rcu(block, rcu);
}
