
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int destroy_ht_node; } ;
struct tcf_chain {struct tcf_block* block; } ;
struct tcf_block {int proto_destroy_lock; int proto_destroy_ht; } ;


 int destroy_obj_hashfn (struct tcf_proto*) ;
 int hash_add_rcu (int ,int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void tcf_proto_signal_destroying(struct tcf_chain *chain,
     struct tcf_proto *tp)
{
 struct tcf_block *block = chain->block;

 mutex_lock(&block->proto_destroy_lock);
 hash_add_rcu(block->proto_destroy_ht, &tp->destroy_ht_node,
       destroy_obj_hashfn(tp));
 mutex_unlock(&block->proto_destroy_lock);
}
