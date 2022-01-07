
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct nfs_server {TYPE_1__* nfs_client; } ;
struct nfs_rpc_ops {int (* lookupp ) (struct inode*,struct nfs_fh*,struct nfs_fattr*,struct nfs4_label*) ;} ;
struct nfs_fh {int dummy; } ;
struct nfs_fattr {int dummy; } ;
struct nfs4_label {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {struct nfs_rpc_ops* rpc_ops; } ;


 int EACCES ;
 int ENOMEM ;
 struct dentry* ERR_CAST (struct nfs4_label*) ;
 struct dentry* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct nfs4_label*) ;
 struct nfs_server* NFS_SB (struct super_block*) ;
 struct inode* d_inode (struct dentry*) ;
 struct dentry* d_obtain_alias (struct inode*) ;
 struct nfs4_label* nfs4_label_alloc (struct nfs_server*,int ) ;
 int nfs4_label_free (struct nfs4_label*) ;
 struct nfs_fattr* nfs_alloc_fattr () ;
 struct inode* nfs_fhget (struct super_block*,struct nfs_fh*,struct nfs_fattr*,struct nfs4_label*) ;
 int nfs_free_fattr (struct nfs_fattr*) ;
 int stub1 (struct inode*,struct nfs_fh*,struct nfs_fattr*,struct nfs4_label*) ;

__attribute__((used)) static struct dentry *
nfs_get_parent(struct dentry *dentry)
{
 int ret;
 struct inode *inode = d_inode(dentry), *pinode;
 struct super_block *sb = inode->i_sb;
 struct nfs_server *server = NFS_SB(sb);
 struct nfs_fattr *fattr = ((void*)0);
 struct nfs4_label *label = ((void*)0);
 struct dentry *parent;
 struct nfs_rpc_ops const *ops = server->nfs_client->rpc_ops;
 struct nfs_fh fh;

 if (!ops->lookupp)
  return ERR_PTR(-EACCES);

 fattr = nfs_alloc_fattr();
 if (fattr == ((void*)0)) {
  parent = ERR_PTR(-ENOMEM);
  goto out;
 }

 label = nfs4_label_alloc(server, GFP_KERNEL);
 if (IS_ERR(label)) {
  parent = ERR_CAST(label);
  goto out_free_fattr;
 }

 ret = ops->lookupp(inode, &fh, fattr, label);
 if (ret) {
  parent = ERR_PTR(ret);
  goto out_free_label;
 }

 pinode = nfs_fhget(sb, &fh, fattr, label);
 parent = d_obtain_alias(pinode);
out_free_label:
 nfs4_label_free(label);
out_free_fattr:
 nfs_free_fattr(fattr);
out:
 return parent;
}
