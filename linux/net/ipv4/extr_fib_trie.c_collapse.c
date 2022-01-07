
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trie {int dummy; } ;
struct key_vector {int key; } ;


 unsigned long child_length (struct key_vector*) ;
 struct key_vector* get_child (struct key_vector*,unsigned long) ;
 int node_free (struct key_vector*) ;
 struct key_vector* node_parent (struct key_vector*) ;
 int node_set_parent (struct key_vector*,struct key_vector*) ;
 int put_child_root (struct key_vector*,int ,struct key_vector*) ;

__attribute__((used)) static struct key_vector *collapse(struct trie *t,
       struct key_vector *oldtnode)
{
 struct key_vector *n, *tp;
 unsigned long i;


 for (n = ((void*)0), i = child_length(oldtnode); !n && i;)
  n = get_child(oldtnode, --i);


 tp = node_parent(oldtnode);
 put_child_root(tp, oldtnode->key, n);
 node_set_parent(n, tp);


 node_free(oldtnode);

 return tp;
}
