
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int destroy_ht_node; } ;
struct tcf_chain {struct tcf_block* block; } ;
struct tcf_block {int proto_destroy_lock; } ;


 int hash_del_rcu (int *) ;
 scalar_t__ hash_hashed (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void
tcf_proto_signal_destroyed(struct tcf_chain *chain, struct tcf_proto *tp)
{
 struct tcf_block *block = chain->block;

 mutex_lock(&block->proto_destroy_lock);
 if (hash_hashed(&tp->destroy_ht_node))
  hash_del_rcu(&tp->destroy_ht_node);
 mutex_unlock(&block->proto_destroy_lock);
}
