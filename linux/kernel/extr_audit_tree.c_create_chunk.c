
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct fsnotify_mark {int dummy; } ;
struct audit_tree {int same_root; struct audit_chunk* root; int chunks; scalar_t__ goner; } ;
struct audit_chunk {int key; int trees; TYPE_1__* owners; } ;
struct TYPE_4__ {int mark_mutex; } ;
struct TYPE_3__ {unsigned int index; int list; struct audit_tree* owner; } ;


 int ENOMEM ;
 int ENOSPC ;
 struct audit_chunk* alloc_chunk (int) ;
 struct fsnotify_mark* alloc_mark () ;
 TYPE_2__* audit_tree_group ;
 scalar_t__ fsnotify_add_inode_mark_locked (struct fsnotify_mark*,struct inode*,int ) ;
 int fsnotify_detach_mark (struct fsnotify_mark*) ;
 int fsnotify_free_mark (struct fsnotify_mark*) ;
 int fsnotify_put_mark (struct fsnotify_mark*) ;
 int get_tree (struct audit_tree*) ;
 int hash_lock ;
 int inode_to_key (struct inode*) ;
 int insert_hash (struct audit_chunk*) ;
 int kfree (struct audit_chunk*) ;
 int list_add (int *,int *) ;
 int mutex_unlock (int *) ;
 int replace_mark_chunk (struct fsnotify_mark*,struct audit_chunk*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int create_chunk(struct inode *inode, struct audit_tree *tree)
{
 struct fsnotify_mark *mark;
 struct audit_chunk *chunk = alloc_chunk(1);

 if (!chunk) {
  mutex_unlock(&audit_tree_group->mark_mutex);
  return -ENOMEM;
 }

 mark = alloc_mark();
 if (!mark) {
  mutex_unlock(&audit_tree_group->mark_mutex);
  kfree(chunk);
  return -ENOMEM;
 }

 if (fsnotify_add_inode_mark_locked(mark, inode, 0)) {
  mutex_unlock(&audit_tree_group->mark_mutex);
  fsnotify_put_mark(mark);
  kfree(chunk);
  return -ENOSPC;
 }

 spin_lock(&hash_lock);
 if (tree->goner) {
  spin_unlock(&hash_lock);
  fsnotify_detach_mark(mark);
  mutex_unlock(&audit_tree_group->mark_mutex);
  fsnotify_free_mark(mark);
  fsnotify_put_mark(mark);
  kfree(chunk);
  return 0;
 }
 replace_mark_chunk(mark, chunk);
 chunk->owners[0].index = (1U << 31);
 chunk->owners[0].owner = tree;
 get_tree(tree);
 list_add(&chunk->owners[0].list, &tree->chunks);
 if (!tree->root) {
  tree->root = chunk;
  list_add(&tree->same_root, &chunk->trees);
 }
 chunk->key = inode_to_key(inode);




 insert_hash(chunk);
 spin_unlock(&hash_lock);
 mutex_unlock(&audit_tree_group->mark_mutex);





 fsnotify_put_mark(mark);
 return 0;
}
