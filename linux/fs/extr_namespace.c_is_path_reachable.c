
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int dentry; int * mnt; } ;
struct mount {int mnt; struct mount* mnt_parent; struct dentry* mnt_mountpoint; } ;
struct dentry {int dummy; } ;


 scalar_t__ is_subdir (struct dentry*,int ) ;
 scalar_t__ mnt_has_parent (struct mount*) ;

bool is_path_reachable(struct mount *mnt, struct dentry *dentry,
    const struct path *root)
{
 while (&mnt->mnt != root->mnt && mnt_has_parent(mnt)) {
  dentry = mnt->mnt_mountpoint;
  mnt = mnt->mnt_parent;
 }
 return &mnt->mnt == root->mnt && is_subdir(dentry, root->dentry);
}
