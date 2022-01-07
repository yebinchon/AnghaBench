
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t_key ;
struct tnode {struct key_vector* kv; } ;
struct key_vector {int leaf; int slen; scalar_t__ bits; scalar_t__ pos; int key; } ;
struct fib_alias {int fa_list; int fa_slen; } ;


 int GFP_KERNEL ;
 int INIT_HLIST_HEAD (int *) ;
 int hlist_add_head (int *,int *) ;
 struct tnode* kmem_cache_alloc (int ,int ) ;
 int trie_leaf_kmem ;

__attribute__((used)) static struct key_vector *leaf_new(t_key key, struct fib_alias *fa)
{
 struct key_vector *l;
 struct tnode *kv;

 kv = kmem_cache_alloc(trie_leaf_kmem, GFP_KERNEL);
 if (!kv)
  return ((void*)0);


 l = kv->kv;
 l->key = key;
 l->pos = 0;
 l->bits = 0;
 l->slen = fa->fa_slen;


 INIT_HLIST_HEAD(&l->leaf);
 hlist_add_head(&fa->fa_list, &l->leaf);

 return l;
}
