
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_message {struct nfs_linkargs* rpc_argp; int * rpc_proc; } ;
struct qstr {int name; int len; } ;
struct nfs_linkargs {int toname; int tolen; int tofh; int fromfh; } ;
struct inode {int dummy; } ;


 size_t NFSPROC_LINK ;
 int NFS_CLIENT (struct inode*) ;
 int NFS_FH (struct inode*) ;
 int dprintk (char*,int) ;
 int nfs_mark_for_revalidate (struct inode*) ;
 int * nfs_procedures ;
 int rpc_call_sync (int ,struct rpc_message*,int ) ;

__attribute__((used)) static int
nfs_proc_link(struct inode *inode, struct inode *dir, const struct qstr *name)
{
 struct nfs_linkargs arg = {
  .fromfh = NFS_FH(inode),
  .tofh = NFS_FH(dir),
  .toname = name->name,
  .tolen = name->len
 };
 struct rpc_message msg = {
  .rpc_proc = &nfs_procedures[NFSPROC_LINK],
  .rpc_argp = &arg,
 };
 int status;

 dprintk("NFS call  link %s\n", name->name);
 status = rpc_call_sync(NFS_CLIENT(inode), &msg, 0);
 nfs_mark_for_revalidate(inode);
 nfs_mark_for_revalidate(dir);
 dprintk("NFS reply link: %d\n", status);
 return status;
}
