
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_message {int rpc_cred; struct nfs3_accessres* rpc_resp; struct nfs3_accessargs* rpc_argp; int * rpc_proc; } ;
struct nfs_access_entry {int cred; int mask; } ;
struct nfs3_accessres {int * fattr; int access; } ;
struct nfs3_accessargs {int access; int fh; } ;
struct inode {int dummy; } ;


 int ENOMEM ;
 size_t NFS3PROC_ACCESS ;
 int NFS_CLIENT (struct inode*) ;
 int NFS_FH (struct inode*) ;
 int dprintk (char*,...) ;
 int * nfs3_procedures ;
 int nfs_access_set_mask (struct nfs_access_entry*,int ) ;
 int * nfs_alloc_fattr () ;
 int nfs_free_fattr (int *) ;
 int nfs_refresh_inode (struct inode*,int *) ;
 int rpc_call_sync (int ,struct rpc_message*,int ) ;

__attribute__((used)) static int nfs3_proc_access(struct inode *inode, struct nfs_access_entry *entry)
{
 struct nfs3_accessargs arg = {
  .fh = NFS_FH(inode),
  .access = entry->mask,
 };
 struct nfs3_accessres res;
 struct rpc_message msg = {
  .rpc_proc = &nfs3_procedures[NFS3PROC_ACCESS],
  .rpc_argp = &arg,
  .rpc_resp = &res,
  .rpc_cred = entry->cred,
 };
 int status = -ENOMEM;

 dprintk("NFS call  access\n");
 res.fattr = nfs_alloc_fattr();
 if (res.fattr == ((void*)0))
  goto out;

 status = rpc_call_sync(NFS_CLIENT(inode), &msg, 0);
 nfs_refresh_inode(inode, res.fattr);
 if (status == 0)
  nfs_access_set_mask(entry, res.access);
 nfs_free_fattr(res.fattr);
out:
 dprintk("NFS reply access: %d\n", status);
 return status;
}
