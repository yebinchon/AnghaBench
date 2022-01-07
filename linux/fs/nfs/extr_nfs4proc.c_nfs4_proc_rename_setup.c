
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_message {int * rpc_proc; struct nfs_renameres* rpc_resp; struct nfs_renameargs* rpc_argp; } ;
struct nfs_renameres {int seq_res; int server; } ;
struct nfs_renameargs {int seq_args; } ;
struct inode {int dummy; } ;
struct dentry {int d_sb; } ;


 size_t NFSPROC4_CLNT_RENAME ;
 int NFS_SB (int ) ;
 struct inode* d_inode (struct dentry*) ;
 int nfs4_init_sequence (int *,int *,int,int ) ;
 int nfs4_inode_make_writeable (struct inode*) ;
 int nfs4_inode_return_delegation (struct inode*) ;
 int * nfs4_procedures ;

__attribute__((used)) static void nfs4_proc_rename_setup(struct rpc_message *msg,
  struct dentry *old_dentry,
  struct dentry *new_dentry)
{
 struct nfs_renameargs *arg = msg->rpc_argp;
 struct nfs_renameres *res = msg->rpc_resp;
 struct inode *old_inode = d_inode(old_dentry);
 struct inode *new_inode = d_inode(new_dentry);

 if (old_inode)
  nfs4_inode_make_writeable(old_inode);
 if (new_inode)
  nfs4_inode_return_delegation(new_inode);
 msg->rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_RENAME];
 res->server = NFS_SB(old_dentry->d_sb);
 nfs4_init_sequence(&arg->seq_args, &res->seq_res, 1, 0);
}
