
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {int ns_cptree_lock; int ns_cptree; } ;
struct nilfs_root {int ifile; int rb_node; struct the_nilfs* nilfs; int count; } ;


 int iput (int ) ;
 int kfree (struct nilfs_root*) ;
 int nilfs_sysfs_delete_snapshot_group (struct nilfs_root*) ;
 int rb_erase (int *,int *) ;
 scalar_t__ refcount_dec_and_test (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void nilfs_put_root(struct nilfs_root *root)
{
 if (refcount_dec_and_test(&root->count)) {
  struct the_nilfs *nilfs = root->nilfs;

  nilfs_sysfs_delete_snapshot_group(root);

  spin_lock(&nilfs->ns_cptree_lock);
  rb_erase(&root->rb_node, &nilfs->ns_cptree);
  spin_unlock(&nilfs->ns_cptree_lock);
  iput(root->ifile);

  kfree(root);
 }
}
