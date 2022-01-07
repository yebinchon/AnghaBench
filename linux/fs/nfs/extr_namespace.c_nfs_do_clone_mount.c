
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;
struct nfs_server {int dummy; } ;
struct nfs_clone_mount {int dentry; } ;


 int nfs_xdev_fs_type ;
 struct vfsmount* vfs_submount (int ,int *,char const*,struct nfs_clone_mount*) ;

__attribute__((used)) static struct vfsmount *nfs_do_clone_mount(struct nfs_server *server,
        const char *devname,
        struct nfs_clone_mount *mountdata)
{
 return vfs_submount(mountdata->dentry, &nfs_xdev_fs_type, devname, mountdata);
}
