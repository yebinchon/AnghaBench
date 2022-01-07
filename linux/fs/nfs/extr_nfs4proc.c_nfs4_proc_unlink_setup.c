
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_message {int * rpc_proc; struct nfs_removeres* rpc_resp; struct nfs_removeargs* rpc_argp; } ;
struct nfs_removeres {int dir_attr; int seq_res; int server; } ;
struct nfs_removeargs {int seq_args; } ;
struct inode {int dummy; } ;
struct dentry {int d_sb; } ;


 size_t NFSPROC4_CLNT_REMOVE ;
 int NFS_SB (int ) ;
 int nfs4_init_sequence (int *,int *,int,int ) ;
 int nfs4_inode_return_delegation (struct inode*) ;
 int * nfs4_procedures ;
 int nfs_fattr_init (int ) ;

__attribute__((used)) static void nfs4_proc_unlink_setup(struct rpc_message *msg,
  struct dentry *dentry,
  struct inode *inode)
{
 struct nfs_removeargs *args = msg->rpc_argp;
 struct nfs_removeres *res = msg->rpc_resp;

 res->server = NFS_SB(dentry->d_sb);
 msg->rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_REMOVE];
 nfs4_init_sequence(&args->seq_args, &res->seq_res, 1, 0);

 nfs_fattr_init(res->dir_attr);

 if (inode)
  nfs4_inode_return_delegation(inode);
}
