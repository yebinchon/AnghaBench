
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct node {int index; int list; struct audit_tree* owner; } ;
struct inode {int i_fsnotify_marks; } ;
struct fsnotify_mark {int dummy; } ;
struct audit_tree {int same_root; struct audit_chunk* root; int chunks; scalar_t__ goner; } ;
struct audit_chunk {int count; int trees; struct node* owners; } ;
struct TYPE_3__ {int mark_mutex; } ;


 int ENOMEM ;
 struct audit_chunk* alloc_chunk (int) ;
 int audit_mark_put_chunk (struct audit_chunk*) ;
 TYPE_1__* audit_tree_group ;
 int create_chunk (struct inode*,struct audit_tree*) ;
 struct fsnotify_mark* fsnotify_find_mark (int *,TYPE_1__*) ;
 int fsnotify_put_mark (struct fsnotify_mark*) ;
 int get_tree (struct audit_tree*) ;
 int hash_lock ;
 int kfree (struct audit_chunk*) ;
 int list_add (int *,int *) ;
 struct audit_chunk* mark_chunk (struct fsnotify_mark*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int replace_chunk (struct audit_chunk*,struct audit_chunk*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int tag_chunk(struct inode *inode, struct audit_tree *tree)
{
 struct fsnotify_mark *mark;
 struct audit_chunk *chunk, *old;
 struct node *p;
 int n;

 mutex_lock(&audit_tree_group->mark_mutex);
 mark = fsnotify_find_mark(&inode->i_fsnotify_marks, audit_tree_group);
 if (!mark)
  return create_chunk(inode, tree);







 spin_lock(&hash_lock);
 old = mark_chunk(mark);
 for (n = 0; n < old->count; n++) {
  if (old->owners[n].owner == tree) {
   spin_unlock(&hash_lock);
   mutex_unlock(&audit_tree_group->mark_mutex);
   fsnotify_put_mark(mark);
   return 0;
  }
 }
 spin_unlock(&hash_lock);

 chunk = alloc_chunk(old->count + 1);
 if (!chunk) {
  mutex_unlock(&audit_tree_group->mark_mutex);
  fsnotify_put_mark(mark);
  return -ENOMEM;
 }

 spin_lock(&hash_lock);
 if (tree->goner) {
  spin_unlock(&hash_lock);
  mutex_unlock(&audit_tree_group->mark_mutex);
  fsnotify_put_mark(mark);
  kfree(chunk);
  return 0;
 }
 p = &chunk->owners[chunk->count - 1];
 p->index = (chunk->count - 1) | (1U<<31);
 p->owner = tree;
 get_tree(tree);
 list_add(&p->list, &tree->chunks);
 if (!tree->root) {
  tree->root = chunk;
  list_add(&tree->same_root, &chunk->trees);
 }




 replace_chunk(chunk, old);
 spin_unlock(&hash_lock);
 mutex_unlock(&audit_tree_group->mark_mutex);
 fsnotify_put_mark(mark);
 audit_mark_put_chunk(old);

 return 0;
}
