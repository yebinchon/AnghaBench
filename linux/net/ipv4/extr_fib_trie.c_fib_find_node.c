
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct trie {struct key_vector* kv; } ;
struct key_vector {unsigned long bits; } ;


 scalar_t__ IS_TNODE (struct key_vector*) ;
 struct key_vector* get_child_rcu (struct key_vector*,unsigned long) ;
 unsigned long get_cindex (int ,struct key_vector*) ;

__attribute__((used)) static struct key_vector *fib_find_node(struct trie *t,
     struct key_vector **tp, u32 key)
{
 struct key_vector *pn, *n = t->kv;
 unsigned long index = 0;

 do {
  pn = n;
  n = get_child_rcu(n, index);

  if (!n)
   break;

  index = get_cindex(key, n);
  if (index >= (1ul << n->bits)) {
   n = ((void*)0);
   break;
  }


 } while (IS_TNODE(n));

 *tp = pn;

 return n;
}
