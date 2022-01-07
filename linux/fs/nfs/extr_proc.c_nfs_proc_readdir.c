
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct rpc_message {struct cred const* rpc_cred; struct nfs_readdirargs* rpc_argp; int * rpc_proc; } ;
struct page {int dummy; } ;
struct nfs_readdirargs {unsigned int count; struct page** pages; scalar_t__ cookie; int fh; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct cred {int dummy; } ;


 size_t NFSPROC_READDIR ;
 int NFS_CLIENT (struct inode*) ;
 int NFS_FH (struct inode*) ;
 struct inode* d_inode (struct dentry*) ;
 int dprintk (char*,int) ;
 int nfs_invalidate_atime (struct inode*) ;
 int * nfs_procedures ;
 int rpc_call_sync (int ,struct rpc_message*,int ) ;

__attribute__((used)) static int
nfs_proc_readdir(struct dentry *dentry, const struct cred *cred,
   u64 cookie, struct page **pages, unsigned int count, bool plus)
{
 struct inode *dir = d_inode(dentry);
 struct nfs_readdirargs arg = {
  .fh = NFS_FH(dir),
  .cookie = cookie,
  .count = count,
  .pages = pages,
 };
 struct rpc_message msg = {
  .rpc_proc = &nfs_procedures[NFSPROC_READDIR],
  .rpc_argp = &arg,
  .rpc_cred = cred,
 };
 int status;

 dprintk("NFS call  readdir %d\n", (unsigned int)cookie);
 status = rpc_call_sync(NFS_CLIENT(dir), &msg, 0);

 nfs_invalidate_atime(dir);

 dprintk("NFS reply readdir: %d\n", status);
 return status;
}
