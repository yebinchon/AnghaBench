
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_root; int * s_op; } ;
struct kernfs_node {int name; int parent; } ;
struct dentry {int dummy; } ;


 int BUG_ON (int) ;
 int EINVAL ;
 struct dentry* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct dentry*) ;
 scalar_t__ WARN_ON (int) ;
 struct dentry* dget (int ) ;
 int dput (struct dentry*) ;
 struct kernfs_node* find_next_ancestor (struct kernfs_node*,struct kernfs_node*) ;
 int kernfs_sops ;
 struct dentry* lookup_one_len_unlocked (int ,struct dentry*,int ) ;
 int strlen (int ) ;

struct dentry *kernfs_node_dentry(struct kernfs_node *kn,
      struct super_block *sb)
{
 struct dentry *dentry;
 struct kernfs_node *knparent = ((void*)0);

 BUG_ON(sb->s_op != &kernfs_sops);

 dentry = dget(sb->s_root);


 if (!kn->parent)
  return dentry;

 knparent = find_next_ancestor(kn, ((void*)0));
 if (WARN_ON(!knparent)) {
  dput(dentry);
  return ERR_PTR(-EINVAL);
 }

 do {
  struct dentry *dtmp;
  struct kernfs_node *kntmp;

  if (kn == knparent)
   return dentry;
  kntmp = find_next_ancestor(kn, knparent);
  if (WARN_ON(!kntmp)) {
   dput(dentry);
   return ERR_PTR(-EINVAL);
  }
  dtmp = lookup_one_len_unlocked(kntmp->name, dentry,
            strlen(kntmp->name));
  dput(dentry);
  if (IS_ERR(dtmp))
   return dtmp;
  knparent = kntmp;
  dentry = dtmp;
 } while (1);
}
