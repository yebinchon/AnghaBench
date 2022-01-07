
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernfs_node {int flags; void const* ns; char* name; int hash; struct kernfs_node* parent; } ;


 int EEXIST ;
 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int KERNFS_EMPTY_DIR ;
 int kernfs_active (struct kernfs_node*) ;
 scalar_t__ kernfs_find_ns (struct kernfs_node*,char const*,void const*) ;
 int kernfs_get (struct kernfs_node*) ;
 int kernfs_link_sibling (struct kernfs_node*) ;
 int kernfs_mutex ;
 int kernfs_name_hash (char const*,void const*) ;
 int kernfs_put (struct kernfs_node*) ;
 int kernfs_rename_lock ;
 int kernfs_unlink_sibling (struct kernfs_node*) ;
 int kfree_const (char const*) ;
 char* kstrdup_const (char const*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ strcmp (char*,char const*) ;

int kernfs_rename_ns(struct kernfs_node *kn, struct kernfs_node *new_parent,
       const char *new_name, const void *new_ns)
{
 struct kernfs_node *old_parent;
 const char *old_name = ((void*)0);
 int error;


 if (!kn->parent)
  return -EINVAL;

 mutex_lock(&kernfs_mutex);

 error = -ENOENT;
 if (!kernfs_active(kn) || !kernfs_active(new_parent) ||
     (new_parent->flags & KERNFS_EMPTY_DIR))
  goto out;

 error = 0;
 if ((kn->parent == new_parent) && (kn->ns == new_ns) &&
     (strcmp(kn->name, new_name) == 0))
  goto out;

 error = -EEXIST;
 if (kernfs_find_ns(new_parent, new_name, new_ns))
  goto out;


 if (strcmp(kn->name, new_name) != 0) {
  error = -ENOMEM;
  new_name = kstrdup_const(new_name, GFP_KERNEL);
  if (!new_name)
   goto out;
 } else {
  new_name = ((void*)0);
 }




 kernfs_unlink_sibling(kn);
 kernfs_get(new_parent);


 spin_lock_irq(&kernfs_rename_lock);

 old_parent = kn->parent;
 kn->parent = new_parent;

 kn->ns = new_ns;
 if (new_name) {
  old_name = kn->name;
  kn->name = new_name;
 }

 spin_unlock_irq(&kernfs_rename_lock);

 kn->hash = kernfs_name_hash(kn->name, kn->ns);
 kernfs_link_sibling(kn);

 kernfs_put(old_parent);
 kfree_const(old_name);

 error = 0;
 out:
 mutex_unlock(&kernfs_mutex);
 return error;
}
