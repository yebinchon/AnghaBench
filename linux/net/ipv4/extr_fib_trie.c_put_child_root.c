
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t_key ;
struct key_vector {int * tnode; } ;


 scalar_t__ IS_TRIE (struct key_vector*) ;
 int get_index (int ,struct key_vector*) ;
 int put_child (struct key_vector*,int ,struct key_vector*) ;
 int rcu_assign_pointer (int ,struct key_vector*) ;

__attribute__((used)) static inline void put_child_root(struct key_vector *tp, t_key key,
      struct key_vector *n)
{
 if (IS_TRIE(tp))
  rcu_assign_pointer(tp->tnode[0], n);
 else
  put_child(tp, get_index(key, tp), n);
}
