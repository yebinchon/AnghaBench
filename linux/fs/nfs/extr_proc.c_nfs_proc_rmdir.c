
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_message {struct nfs_diropargs* rpc_argp; int * rpc_proc; } ;
struct qstr {int name; int len; } ;
struct nfs_diropargs {int name; int len; int fh; } ;
struct inode {int dummy; } ;


 size_t NFSPROC_RMDIR ;
 int NFS_CLIENT (struct inode*) ;
 int NFS_FH (struct inode*) ;
 int dprintk (char*,int) ;
 int nfs_mark_for_revalidate (struct inode*) ;
 int * nfs_procedures ;
 int rpc_call_sync (int ,struct rpc_message*,int ) ;

__attribute__((used)) static int
nfs_proc_rmdir(struct inode *dir, const struct qstr *name)
{
 struct nfs_diropargs arg = {
  .fh = NFS_FH(dir),
  .name = name->name,
  .len = name->len
 };
 struct rpc_message msg = {
  .rpc_proc = &nfs_procedures[NFSPROC_RMDIR],
  .rpc_argp = &arg,
 };
 int status;

 dprintk("NFS call  rmdir %s\n", name->name);
 status = rpc_call_sync(NFS_CLIENT(dir), &msg, 0);
 nfs_mark_for_revalidate(dir);
 dprintk("NFS reply rmdir: %d\n", status);
 return status;
}
