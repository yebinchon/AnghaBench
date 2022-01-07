
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_message {struct nfs_removeargs* rpc_argp; int * rpc_proc; } ;
struct nfs_removeargs {int name; int fh; } ;
struct inode {int dummy; } ;
struct dentry {int d_name; } ;


 size_t NFSPROC_REMOVE ;
 int NFS_CLIENT (struct inode*) ;
 int NFS_FH (struct inode*) ;
 int dprintk (char*,...) ;
 int nfs_mark_for_revalidate (struct inode*) ;
 int * nfs_procedures ;
 int rpc_call_sync (int ,struct rpc_message*,int ) ;

__attribute__((used)) static int
nfs_proc_remove(struct inode *dir, struct dentry *dentry)
{
 struct nfs_removeargs arg = {
  .fh = NFS_FH(dir),
  .name = dentry->d_name,
 };
 struct rpc_message msg = {
  .rpc_proc = &nfs_procedures[NFSPROC_REMOVE],
  .rpc_argp = &arg,
 };
 int status;

 dprintk("NFS call  remove %pd2\n",dentry);
 status = rpc_call_sync(NFS_CLIENT(dir), &msg, 0);
 nfs_mark_for_revalidate(dir);

 dprintk("NFS reply remove: %d\n", status);
 return status;
}
