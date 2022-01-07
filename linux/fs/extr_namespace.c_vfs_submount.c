
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfsmount {int dummy; } ;
struct file_system_type {int dummy; } ;
struct dentry {TYPE_1__* d_sb; } ;
struct TYPE_2__ {int * s_user_ns; } ;


 int EPERM ;
 struct vfsmount* ERR_PTR (int ) ;
 int SB_SUBMOUNT ;
 int init_user_ns ;
 struct vfsmount* vfs_kern_mount (struct file_system_type*,int ,char const*,void*) ;

struct vfsmount *
vfs_submount(const struct dentry *mountpoint, struct file_system_type *type,
      const char *name, void *data)
{




 if (mountpoint->d_sb->s_user_ns != &init_user_ns)
  return ERR_PTR(-EPERM);

 return vfs_kern_mount(type, SB_SUBMOUNT, name, data);
}
