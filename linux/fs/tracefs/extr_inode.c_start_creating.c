
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct dentry {scalar_t__ d_inode; } ;
struct TYPE_4__ {struct dentry* mnt_root; } ;


 int EEXIST ;
 struct dentry* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int dput (struct dentry*) ;
 int inode_lock (scalar_t__) ;
 int inode_unlock (scalar_t__) ;
 struct dentry* lookup_one_len (char const*,struct dentry*,int ) ;
 int pr_debug (char*,char const*) ;
 int simple_pin_fs (int *,TYPE_1__**,int *) ;
 int simple_release_fs (TYPE_1__**,int *) ;
 int strlen (char const*) ;
 int trace_fs_type ;
 TYPE_1__* tracefs_mount ;
 int tracefs_mount_count ;

__attribute__((used)) static struct dentry *start_creating(const char *name, struct dentry *parent)
{
 struct dentry *dentry;
 int error;

 pr_debug("tracefs: creating file '%s'\n",name);

 error = simple_pin_fs(&trace_fs_type, &tracefs_mount,
         &tracefs_mount_count);
 if (error)
  return ERR_PTR(error);






 if (!parent)
  parent = tracefs_mount->mnt_root;

 inode_lock(parent->d_inode);
 dentry = lookup_one_len(name, parent, strlen(name));
 if (!IS_ERR(dentry) && dentry->d_inode) {
  dput(dentry);
  dentry = ERR_PTR(-EEXIST);
 }

 if (IS_ERR(dentry)) {
  inode_unlock(parent->d_inode);
  simple_release_fs(&tracefs_mount, &tracefs_mount_count);
 }

 return dentry;
}
