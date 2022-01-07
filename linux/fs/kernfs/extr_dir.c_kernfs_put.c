
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kernfs_root {int ino_idr; } ;
struct TYPE_4__ {int ino; } ;
struct TYPE_3__ {struct kernfs_node* target_kn; } ;
struct kernfs_node {char* name; int count; TYPE_2__ id; struct kernfs_node* iattr; int xattrs; TYPE_1__ symlink; int active; struct kernfs_node* parent; } ;


 scalar_t__ KERNFS_LINK ;
 scalar_t__ KN_DEACTIVATED_BIAS ;
 int WARN_ONCE (int,char*,char*,char*,scalar_t__) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 scalar_t__ atomic_read (int *) ;
 int idr_destroy (int *) ;
 int idr_remove (int *,int ) ;
 int kernfs_iattrs_cache ;
 int kernfs_idr_lock ;
 int kernfs_node_cache ;
 struct kernfs_root* kernfs_root (struct kernfs_node*) ;
 scalar_t__ kernfs_type (struct kernfs_node*) ;
 int kfree (struct kernfs_root*) ;
 int kfree_const (char*) ;
 int kmem_cache_free (int ,struct kernfs_node*) ;
 int simple_xattrs_free (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void kernfs_put(struct kernfs_node *kn)
{
 struct kernfs_node *parent;
 struct kernfs_root *root;





 if (!kn || !atomic_dec_and_test(&kn->count))
  return;
 root = kernfs_root(kn);
 repeat:




 parent = kn->parent;

 WARN_ONCE(atomic_read(&kn->active) != KN_DEACTIVATED_BIAS,
    "kernfs_put: %s/%s: released with incorrect active_ref %d\n",
    parent ? parent->name : "", kn->name, atomic_read(&kn->active));

 if (kernfs_type(kn) == KERNFS_LINK)
  kernfs_put(kn->symlink.target_kn);

 kfree_const(kn->name);

 if (kn->iattr) {
  simple_xattrs_free(&kn->iattr->xattrs);
  kmem_cache_free(kernfs_iattrs_cache, kn->iattr);
 }
 spin_lock(&kernfs_idr_lock);
 idr_remove(&root->ino_idr, kn->id.ino);
 spin_unlock(&kernfs_idr_lock);
 kmem_cache_free(kernfs_node_cache, kn);

 kn = parent;
 if (kn) {
  if (atomic_dec_and_test(&kn->count))
   goto repeat;
 } else {

  idr_destroy(&root->ino_idr);
  kfree(root);
 }
}
