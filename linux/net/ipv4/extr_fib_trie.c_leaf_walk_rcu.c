
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ t_key ;
struct key_vector {scalar_t__ key; unsigned long bits; } ;


 scalar_t__ IS_LEAF (struct key_vector*) ;
 scalar_t__ IS_TNODE (struct key_vector*) ;
 int IS_TRIE (struct key_vector*) ;
 struct key_vector* get_child_rcu (struct key_vector*,int ) ;
 int get_index (scalar_t__,struct key_vector*) ;
 struct key_vector* node_parent_rcu (struct key_vector*) ;

__attribute__((used)) static struct key_vector *leaf_walk_rcu(struct key_vector **tn, t_key key)
{
 struct key_vector *pn, *n = *tn;
 unsigned long cindex;


 do {

  pn = n;
  cindex = (key > pn->key) ? get_index(key, pn) : 0;

  if (cindex >> pn->bits)
   break;


  n = get_child_rcu(pn, cindex++);
  if (!n)
   break;


  if (IS_LEAF(n) && (n->key >= key))
   goto found;
 } while (IS_TNODE(n));


 while (!IS_TRIE(pn)) {

  if (cindex >= (1ul << pn->bits)) {
   t_key pkey = pn->key;

   pn = node_parent_rcu(pn);
   cindex = get_index(pkey, pn) + 1;
   continue;
  }


  n = get_child_rcu(pn, cindex++);
  if (!n)
   continue;


  if (IS_LEAF(n))
   goto found;


  pn = n;
  cindex = 0;
 }

 *tn = pn;
 return ((void*)0);
found:

 *tn = pn;
 return n;
}
