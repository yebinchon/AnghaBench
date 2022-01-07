
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int mnt_sb; } ;
struct cred {int dummy; } ;


 int FILESYSTEM__UNMOUNT ;
 struct cred* current_cred () ;
 int superblock_has_perm (struct cred const*,int ,int ,int *) ;

__attribute__((used)) static int selinux_umount(struct vfsmount *mnt, int flags)
{
 const struct cred *cred = current_cred();

 return superblock_has_perm(cred, mnt->mnt_sb,
       FILESYSTEM__UNMOUNT, ((void*)0));
}
