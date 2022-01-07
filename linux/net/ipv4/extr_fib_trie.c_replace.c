
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trie {int dummy; } ;
struct key_vector {int key; } ;


 int NODE_INIT_PARENT (struct key_vector*,struct key_vector*) ;
 unsigned long child_length (struct key_vector*) ;
 struct key_vector* get_child (struct key_vector*,unsigned long) ;
 struct key_vector* node_parent (struct key_vector*) ;
 int put_child_root (struct key_vector*,int ,struct key_vector*) ;
 struct key_vector* resize (struct trie*,struct key_vector*) ;
 int tnode_free (struct key_vector*) ;
 scalar_t__ tnode_full (struct key_vector*,struct key_vector*) ;
 int update_children (struct key_vector*) ;

__attribute__((used)) static struct key_vector *replace(struct trie *t,
      struct key_vector *oldtnode,
      struct key_vector *tn)
{
 struct key_vector *tp = node_parent(oldtnode);
 unsigned long i;


 NODE_INIT_PARENT(tn, tp);
 put_child_root(tp, tn->key, tn);


 update_children(tn);


 tnode_free(oldtnode);


 for (i = child_length(tn); i;) {
  struct key_vector *inode = get_child(tn, --i);


  if (tnode_full(tn, inode))
   tn = resize(t, inode);
 }

 return tp;
}
