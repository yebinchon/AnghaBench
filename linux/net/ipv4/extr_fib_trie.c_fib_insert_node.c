
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t_key ;
struct trie {int dummy; } ;
struct key_vector {int key; } ;
struct fib_alias {int fa_slen; } ;


 int ENOMEM ;
 int NODE_INIT_PARENT (struct key_vector*,struct key_vector*) ;
 int __fls (int) ;
 struct key_vector* get_child (struct key_vector*,int) ;
 int get_index (int,struct key_vector*) ;
 struct key_vector* leaf_new (int,struct fib_alias*) ;
 int node_free (struct key_vector*) ;
 int node_push_suffix (struct key_vector*,int ) ;
 int node_set_parent (struct key_vector*,struct key_vector*) ;
 int put_child (struct key_vector*,int,struct key_vector*) ;
 int put_child_root (struct key_vector*,int,struct key_vector*) ;
 struct key_vector* tnode_new (int,int ,int) ;
 int trie_rebalance (struct trie*,struct key_vector*) ;

__attribute__((used)) static int fib_insert_node(struct trie *t, struct key_vector *tp,
      struct fib_alias *new, t_key key)
{
 struct key_vector *n, *l;

 l = leaf_new(key, new);
 if (!l)
  goto noleaf;


 n = get_child(tp, get_index(key, tp));







 if (n) {
  struct key_vector *tn;

  tn = tnode_new(key, __fls(key ^ n->key), 1);
  if (!tn)
   goto notnode;


  NODE_INIT_PARENT(tn, tp);
  put_child(tn, get_index(key, tn) ^ 1, n);


  put_child_root(tp, key, tn);
  node_set_parent(n, tn);


  tp = tn;
 }


 node_push_suffix(tp, new->fa_slen);
 NODE_INIT_PARENT(l, tp);
 put_child_root(tp, key, l);
 trie_rebalance(t, tp);

 return 0;
notnode:
 node_free(l);
noleaf:
 return -ENOMEM;
}
