
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_message {struct nfs_fattr* rpc_resp; struct nfs3_readlinkargs* rpc_argp; int * rpc_proc; } ;
struct page {int dummy; } ;
struct nfs_fattr {int dummy; } ;
struct nfs3_readlinkargs {unsigned int pgbase; unsigned int pglen; struct page** pages; int fh; } ;
struct inode {int dummy; } ;


 int ENOMEM ;
 size_t NFS3PROC_READLINK ;
 int NFS_CLIENT (struct inode*) ;
 int NFS_FH (struct inode*) ;
 int dprintk (char*,...) ;
 int * nfs3_procedures ;
 struct nfs_fattr* nfs_alloc_fattr () ;
 int nfs_free_fattr (struct nfs_fattr*) ;
 int nfs_refresh_inode (struct inode*,struct nfs_fattr*) ;
 int rpc_call_sync (int ,struct rpc_message*,int ) ;

__attribute__((used)) static int nfs3_proc_readlink(struct inode *inode, struct page *page,
  unsigned int pgbase, unsigned int pglen)
{
 struct nfs_fattr *fattr;
 struct nfs3_readlinkargs args = {
  .fh = NFS_FH(inode),
  .pgbase = pgbase,
  .pglen = pglen,
  .pages = &page
 };
 struct rpc_message msg = {
  .rpc_proc = &nfs3_procedures[NFS3PROC_READLINK],
  .rpc_argp = &args,
 };
 int status = -ENOMEM;

 dprintk("NFS call  readlink\n");
 fattr = nfs_alloc_fattr();
 if (fattr == ((void*)0))
  goto out;
 msg.rpc_resp = fattr;

 status = rpc_call_sync(NFS_CLIENT(inode), &msg, 0);
 nfs_refresh_inode(inode, fattr);
 nfs_free_fattr(fattr);
out:
 dprintk("NFS reply readlink: %d\n", status);
 return status;
}
