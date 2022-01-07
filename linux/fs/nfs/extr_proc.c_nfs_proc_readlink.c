
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_message {struct nfs_readlinkargs* rpc_argp; int * rpc_proc; } ;
struct page {int dummy; } ;
struct nfs_readlinkargs {unsigned int pgbase; unsigned int pglen; struct page** pages; int fh; } ;
struct inode {int dummy; } ;


 size_t NFSPROC_READLINK ;
 int NFS_CLIENT (struct inode*) ;
 int NFS_FH (struct inode*) ;
 int dprintk (char*,...) ;
 int * nfs_procedures ;
 int rpc_call_sync (int ,struct rpc_message*,int ) ;

__attribute__((used)) static int nfs_proc_readlink(struct inode *inode, struct page *page,
  unsigned int pgbase, unsigned int pglen)
{
 struct nfs_readlinkargs args = {
  .fh = NFS_FH(inode),
  .pgbase = pgbase,
  .pglen = pglen,
  .pages = &page
 };
 struct rpc_message msg = {
  .rpc_proc = &nfs_procedures[NFSPROC_READLINK],
  .rpc_argp = &args,
 };
 int status;

 dprintk("NFS call  readlink\n");
 status = rpc_call_sync(NFS_CLIENT(inode), &msg, 0);
 dprintk("NFS reply readlink: %d\n", status);
 return status;
}
