
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;
struct file_system_type {int dummy; } ;
struct dentry {int dummy; } ;


 scalar_t__ IS_ERR (struct vfsmount*) ;
 struct file_system_type* get_fs_type (char*) ;
 int mntget (struct vfsmount*) ;
 int put_filesystem (struct file_system_type*) ;
 struct vfsmount* vfs_submount (struct dentry*,struct file_system_type*,char*,int *) ;

__attribute__((used)) static struct vfsmount *trace_automount(struct dentry *mntpt, void *ingore)
{
 struct vfsmount *mnt;
 struct file_system_type *type;






 type = get_fs_type("tracefs");
 if (!type)
  return ((void*)0);
 mnt = vfs_submount(mntpt, type, "tracefs", ((void*)0));
 put_filesystem(type);
 if (IS_ERR(mnt))
  return ((void*)0);
 mntget(mnt);

 return mnt;
}
