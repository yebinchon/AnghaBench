
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vfsmount {int dummy; } ;
struct fs_context {TYPE_2__* root; } ;
struct TYPE_4__ {TYPE_1__* d_sb; } ;
struct TYPE_3__ {int s_umount; } ;


 struct vfsmount* ERR_PTR (int) ;
 int up_write (int *) ;
 struct vfsmount* vfs_create_mount (struct fs_context*) ;
 int vfs_get_tree (struct fs_context*) ;

struct vfsmount *fc_mount(struct fs_context *fc)
{
 int err = vfs_get_tree(fc);
 if (!err) {
  up_write(&fc->root->d_sb->s_umount);
  return vfs_create_mount(fc);
 }
 return ERR_PTR(err);
}
