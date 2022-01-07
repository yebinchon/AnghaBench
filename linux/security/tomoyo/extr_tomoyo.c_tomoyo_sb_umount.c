
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int mnt_root; } ;
struct path {int dentry; struct vfsmount* mnt; } ;


 int TOMOYO_TYPE_UMOUNT ;
 int tomoyo_path_perm (int ,struct path*,int *) ;

__attribute__((used)) static int tomoyo_sb_umount(struct vfsmount *mnt, int flags)
{
 struct path path = { .mnt = mnt, .dentry = mnt->mnt_root };

 return tomoyo_path_perm(TOMOYO_TYPE_UMOUNT, &path, ((void*)0));
}
