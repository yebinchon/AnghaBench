
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ t_key ;
struct trie {struct key_vector* kv; } ;
struct notifier_block {int dummy; } ;
struct net {int dummy; } ;
struct key_vector {scalar_t__ key; } ;
struct fib_table {scalar_t__ tb_data; } ;


 int fib_leaf_notify (struct net*,struct key_vector*,struct fib_table*,struct notifier_block*) ;
 struct key_vector* leaf_walk_rcu (struct key_vector**,scalar_t__) ;

__attribute__((used)) static void fib_table_notify(struct net *net, struct fib_table *tb,
        struct notifier_block *nb)
{
 struct trie *t = (struct trie *)tb->tb_data;
 struct key_vector *l, *tp = t->kv;
 t_key key = 0;

 while ((l = leaf_walk_rcu(&tp, key)) != ((void*)0)) {
  fib_leaf_notify(net, l, tb, nb);

  key = l->key + 1;

  if (key < l->key)
   break;
 }
}
