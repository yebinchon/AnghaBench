
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct nfs_subversion {TYPE_2__* rpc_ops; } ;
struct nfs_server {int dummy; } ;
struct nfs_mount_info {struct nfs_clone_mount* cloned; int mntfh; int set_security; int fill_super; } ;
struct nfs_clone_mount {int authflavor; int fattr; int fh; int sb; } ;
struct file_system_type {int dummy; } ;
typedef struct nfs_server dentry ;
struct TYPE_7__ {TYPE_1__* nfs_client; } ;
struct TYPE_6__ {struct nfs_server* (* clone_server ) (TYPE_3__*,int ,int ,int ) ;} ;
struct TYPE_5__ {struct nfs_subversion* cl_nfs_mod; } ;


 int ENOMEM ;
 struct nfs_server* ERR_CAST (struct nfs_server*) ;
 struct nfs_server* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct nfs_server*) ;
 TYPE_3__* NFS_SB (int ) ;
 long PTR_ERR (struct nfs_server*) ;
 int dprintk (char*,...) ;
 int nfs_clone_sb_security ;
 int nfs_clone_super ;
 struct nfs_server* nfs_fs_mount_common (struct nfs_server*,int,char const*,struct nfs_mount_info*,struct nfs_subversion*) ;
 struct nfs_server* stub1 (TYPE_3__*,int ,int ,int ) ;

__attribute__((used)) static struct dentry *
nfs_xdev_mount(struct file_system_type *fs_type, int flags,
  const char *dev_name, void *raw_data)
{
 struct nfs_clone_mount *data = raw_data;
 struct nfs_mount_info mount_info = {
  .fill_super = nfs_clone_super,
  .set_security = nfs_clone_sb_security,
  .cloned = data,
 };
 struct nfs_server *server;
 struct dentry *mntroot = ERR_PTR(-ENOMEM);
 struct nfs_subversion *nfs_mod = NFS_SB(data->sb)->nfs_client->cl_nfs_mod;

 dprintk("--> nfs_xdev_mount()\n");

 mount_info.mntfh = mount_info.cloned->fh;


 server = nfs_mod->rpc_ops->clone_server(NFS_SB(data->sb), data->fh, data->fattr, data->authflavor);

 if (IS_ERR(server))
  mntroot = ERR_CAST(server);
 else
  mntroot = nfs_fs_mount_common(server, flags,
    dev_name, &mount_info, nfs_mod);

 dprintk("<-- nfs_xdev_mount() = %ld\n",
   IS_ERR(mntroot) ? PTR_ERR(mntroot) : 0L);
 return mntroot;
}
