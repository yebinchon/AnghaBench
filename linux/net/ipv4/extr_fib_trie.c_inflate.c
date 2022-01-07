
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t_key ;
struct trie {int dummy; } ;
struct key_vector {int key; unsigned int pos; int bits; } ;


 int NODE_INIT_PARENT (struct key_vector*,struct key_vector*) ;
 unsigned long child_length (struct key_vector*) ;
 struct key_vector* get_child (struct key_vector*,unsigned long) ;
 int get_index (int,struct key_vector*) ;
 int pr_debug (char*) ;
 int put_child (struct key_vector*,int,struct key_vector*) ;
 struct key_vector* replace (struct trie*,struct key_vector*,struct key_vector*) ;
 int tnode_free (struct key_vector*) ;
 int tnode_free_append (struct key_vector*,struct key_vector*) ;
 int tnode_free_init (struct key_vector*) ;
 int tnode_full (struct key_vector*,struct key_vector*) ;
 struct key_vector* tnode_new (int,unsigned int,int) ;

__attribute__((used)) static struct key_vector *inflate(struct trie *t,
      struct key_vector *oldtnode)
{
 struct key_vector *tn;
 unsigned long i;
 t_key m;

 pr_debug("In inflate\n");

 tn = tnode_new(oldtnode->key, oldtnode->pos - 1, oldtnode->bits + 1);
 if (!tn)
  goto notnode;


 tnode_free_init(oldtnode);






 for (i = child_length(oldtnode), m = 1u << tn->pos; i;) {
  struct key_vector *inode = get_child(oldtnode, --i);
  struct key_vector *node0, *node1;
  unsigned long j, k;


  if (!inode)
   continue;


  if (!tnode_full(oldtnode, inode)) {
   put_child(tn, get_index(inode->key, tn), inode);
   continue;
  }


  tnode_free_append(oldtnode, inode);


  if (inode->bits == 1) {
   put_child(tn, 2 * i + 1, get_child(inode, 1));
   put_child(tn, 2 * i, get_child(inode, 0));
   continue;
  }
  node1 = tnode_new(inode->key | m, inode->pos, inode->bits - 1);
  if (!node1)
   goto nomem;
  node0 = tnode_new(inode->key, inode->pos, inode->bits - 1);

  tnode_free_append(tn, node1);
  if (!node0)
   goto nomem;
  tnode_free_append(tn, node0);


  for (k = child_length(inode), j = k / 2; j;) {
   put_child(node1, --j, get_child(inode, --k));
   put_child(node0, j, get_child(inode, j));
   put_child(node1, --j, get_child(inode, --k));
   put_child(node0, j, get_child(inode, j));
  }


  NODE_INIT_PARENT(node1, tn);
  NODE_INIT_PARENT(node0, tn);


  put_child(tn, 2 * i + 1, node1);
  put_child(tn, 2 * i, node0);
 }


 return replace(t, oldtnode, tn);
nomem:

 tnode_free(tn);
notnode:
 return ((void*)0);
}
