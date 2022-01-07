
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trie {int dummy; } ;
struct key_vector {int bits; scalar_t__ pos; int key; } ;


 int NODE_INIT_PARENT (struct key_vector*,struct key_vector*) ;
 unsigned long child_length (struct key_vector*) ;
 struct key_vector* get_child (struct key_vector*,unsigned long) ;
 int pr_debug (char*) ;
 int put_child (struct key_vector*,unsigned long,struct key_vector*) ;
 struct key_vector* replace (struct trie*,struct key_vector*,struct key_vector*) ;
 int tnode_free (struct key_vector*) ;
 int tnode_free_append (struct key_vector*,struct key_vector*) ;
 int tnode_free_init (struct key_vector*) ;
 struct key_vector* tnode_new (int ,scalar_t__,int) ;

__attribute__((used)) static struct key_vector *halve(struct trie *t,
    struct key_vector *oldtnode)
{
 struct key_vector *tn;
 unsigned long i;

 pr_debug("In halve\n");

 tn = tnode_new(oldtnode->key, oldtnode->pos + 1, oldtnode->bits - 1);
 if (!tn)
  goto notnode;


 tnode_free_init(oldtnode);






 for (i = child_length(oldtnode); i;) {
  struct key_vector *node1 = get_child(oldtnode, --i);
  struct key_vector *node0 = get_child(oldtnode, --i);
  struct key_vector *inode;


  if (!node1 || !node0) {
   put_child(tn, i / 2, node1 ? : node0);
   continue;
  }


  inode = tnode_new(node0->key, oldtnode->pos, 1);
  if (!inode)
   goto nomem;
  tnode_free_append(tn, inode);


  put_child(inode, 1, node1);
  put_child(inode, 0, node0);
  NODE_INIT_PARENT(inode, tn);


  put_child(tn, i / 2, inode);
 }


 return replace(t, oldtnode, tn);
nomem:

 tnode_free(tn);
notnode:
 return ((void*)0);
}
