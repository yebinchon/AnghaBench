
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct rpc_message {struct nfs4_link_res* rpc_resp; struct nfs4_link_arg* rpc_argp; int * rpc_proc; } ;
struct qstr {int dummy; } ;
struct nfs_server {int client; } ;
struct nfs4_link_res {TYPE_1__* fattr; int * label; int cinfo; int seq_res; struct nfs_server* server; } ;
struct nfs4_link_arg {int seq_args; int * bitmask; struct qstr const* name; int dir_fh; int fh; } ;
struct inode {int dummy; } ;
typedef int __u32 ;
struct TYPE_5__ {int time_start; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int *) ;
 int NFS4_BITMASK_SZ ;
 size_t NFSPROC4_CLNT_LINK ;
 int NFS_FH (struct inode*) ;
 struct nfs_server* NFS_SERVER (struct inode*) ;
 int PTR_ERR (int *) ;
 int nfs4_bitmap_copy_adjust_setattr (int *,int ,struct inode*) ;
 int nfs4_bitmask (struct nfs_server*,int *) ;
 int nfs4_call_sync (int ,struct nfs_server*,struct rpc_message*,int *,int *,int) ;
 int nfs4_inode_make_writeable (struct inode*) ;
 int * nfs4_label_alloc (struct nfs_server*,int ) ;
 int nfs4_label_free (int *) ;
 int * nfs4_procedures ;
 TYPE_1__* nfs_alloc_fattr () ;
 int nfs_free_fattr (TYPE_1__*) ;
 int nfs_post_op_update_inode (struct inode*,TYPE_1__*) ;
 int nfs_setsecurity (struct inode*,TYPE_1__*,int *) ;
 int update_changeattr (struct inode*,int *,int ,int ) ;

__attribute__((used)) static int _nfs4_proc_link(struct inode *inode, struct inode *dir, const struct qstr *name)
{
 struct nfs_server *server = NFS_SERVER(inode);
 __u32 bitmask[NFS4_BITMASK_SZ];
 struct nfs4_link_arg arg = {
  .fh = NFS_FH(inode),
  .dir_fh = NFS_FH(dir),
  .name = name,
  .bitmask = bitmask,
 };
 struct nfs4_link_res res = {
  .server = server,
  .label = ((void*)0),
 };
 struct rpc_message msg = {
  .rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_LINK],
  .rpc_argp = &arg,
  .rpc_resp = &res,
 };
 int status = -ENOMEM;

 res.fattr = nfs_alloc_fattr();
 if (res.fattr == ((void*)0))
  goto out;

 res.label = nfs4_label_alloc(server, GFP_KERNEL);
 if (IS_ERR(res.label)) {
  status = PTR_ERR(res.label);
  goto out;
 }

 nfs4_inode_make_writeable(inode);
 nfs4_bitmap_copy_adjust_setattr(bitmask, nfs4_bitmask(server, res.label), inode);

 status = nfs4_call_sync(server->client, server, &msg, &arg.seq_args, &res.seq_res, 1);
 if (!status) {
  update_changeattr(dir, &res.cinfo, res.fattr->time_start, 0);
  status = nfs_post_op_update_inode(inode, res.fattr);
  if (!status)
   nfs_setsecurity(inode, res.fattr, res.label);
 }


 nfs4_label_free(res.label);

out:
 nfs_free_fattr(res.fattr);
 return status;
}
