
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vfsmount {int dummy; } ;
struct path {int dentry; } ;
struct nfs_server {TYPE_2__* nfs_client; } ;
struct nfs_fh {int dummy; } ;
struct nfs_fattr {int dummy; } ;
struct TYPE_4__ {TYPE_1__* rpc_ops; } ;
struct TYPE_3__ {struct vfsmount* (* submount ) (struct nfs_server*,int ,struct nfs_fh*,struct nfs_fattr*) ;} ;


 int ENOMEM ;
 struct vfsmount* ERR_PTR (int ) ;
 int ESTALE ;
 scalar_t__ IS_ERR (struct vfsmount*) ;
 scalar_t__ IS_ROOT (int ) ;
 struct nfs_server* NFS_SERVER (int ) ;
 int d_inode (int ) ;
 int mnt_set_expiry (struct vfsmount*,int *) ;
 int mntget (struct vfsmount*) ;
 struct nfs_fattr* nfs_alloc_fattr () ;
 struct nfs_fh* nfs_alloc_fhandle () ;
 int nfs_automount_list ;
 int nfs_automount_task ;
 int nfs_free_fattr (struct nfs_fattr*) ;
 int nfs_free_fhandle (struct nfs_fh*) ;
 int nfs_mountpoint_expiry_timeout ;
 int schedule_delayed_work (int *,int ) ;
 struct vfsmount* stub1 (struct nfs_server*,int ,struct nfs_fh*,struct nfs_fattr*) ;

struct vfsmount *nfs_d_automount(struct path *path)
{
 struct vfsmount *mnt;
 struct nfs_server *server = NFS_SERVER(d_inode(path->dentry));
 struct nfs_fh *fh = ((void*)0);
 struct nfs_fattr *fattr = ((void*)0);

 if (IS_ROOT(path->dentry))
  return ERR_PTR(-ESTALE);

 mnt = ERR_PTR(-ENOMEM);
 fh = nfs_alloc_fhandle();
 fattr = nfs_alloc_fattr();
 if (fh == ((void*)0) || fattr == ((void*)0))
  goto out;

 mnt = server->nfs_client->rpc_ops->submount(server, path->dentry, fh, fattr);
 if (IS_ERR(mnt))
  goto out;

 mntget(mnt);
 mnt_set_expiry(mnt, &nfs_automount_list);
 schedule_delayed_work(&nfs_automount_task, nfs_mountpoint_expiry_timeout);

out:
 nfs_free_fattr(fattr);
 nfs_free_fhandle(fh);
 return mnt;
}
