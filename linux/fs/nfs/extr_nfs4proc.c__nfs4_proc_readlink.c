
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_message {struct nfs4_readlink_res* rpc_resp; struct nfs4_readlink* rpc_argp; int * rpc_proc; } ;
struct page {int dummy; } ;
struct nfs4_readlink_res {int seq_res; } ;
struct nfs4_readlink {unsigned int pgbase; unsigned int pglen; int seq_args; struct page** pages; int fh; } ;
struct inode {int dummy; } ;
struct TYPE_3__ {int client; } ;


 size_t NFSPROC4_CLNT_READLINK ;
 int NFS_FH (struct inode*) ;
 TYPE_1__* NFS_SERVER (struct inode*) ;
 int nfs4_call_sync (int ,TYPE_1__*,struct rpc_message*,int *,int *,int ) ;
 int * nfs4_procedures ;

__attribute__((used)) static int _nfs4_proc_readlink(struct inode *inode, struct page *page,
  unsigned int pgbase, unsigned int pglen)
{
 struct nfs4_readlink args = {
  .fh = NFS_FH(inode),
  .pgbase = pgbase,
  .pglen = pglen,
  .pages = &page,
 };
 struct nfs4_readlink_res res;
 struct rpc_message msg = {
  .rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_READLINK],
  .rpc_argp = &args,
  .rpc_resp = &res,
 };

 return nfs4_call_sync(NFS_SERVER(inode)->client, NFS_SERVER(inode), &msg, &args.seq_args, &res.seq_res, 0);
}
