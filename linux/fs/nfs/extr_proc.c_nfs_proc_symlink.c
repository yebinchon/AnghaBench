
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_message {struct nfs_symlinkargs* rpc_argp; int * rpc_proc; } ;
struct page {int dummy; } ;
struct nfs_symlinkargs {unsigned int pathlen; struct iattr* sattr; struct page** pages; int fromlen; int fromname; int fromfh; } ;
struct nfs_fh {int dummy; } ;
struct nfs_fattr {int dummy; } ;
struct inode {int dummy; } ;
struct iattr {int dummy; } ;
struct TYPE_2__ {int len; int name; } ;
struct dentry {TYPE_1__ d_name; } ;


 int ENAMETOOLONG ;
 int ENOMEM ;
 unsigned int NFS2_MAXPATHLEN ;
 size_t NFSPROC_SYMLINK ;
 int NFS_CLIENT (struct inode*) ;
 int NFS_FH (struct inode*) ;
 int dprintk (char*,...) ;
 struct nfs_fattr* nfs_alloc_fattr () ;
 struct nfs_fh* nfs_alloc_fhandle () ;
 int nfs_free_fattr (struct nfs_fattr*) ;
 int nfs_free_fhandle (struct nfs_fh*) ;
 int nfs_instantiate (struct dentry*,struct nfs_fh*,struct nfs_fattr*,int *) ;
 int nfs_mark_for_revalidate (struct inode*) ;
 int * nfs_procedures ;
 int rpc_call_sync (int ,struct rpc_message*,int ) ;

__attribute__((used)) static int
nfs_proc_symlink(struct inode *dir, struct dentry *dentry, struct page *page,
   unsigned int len, struct iattr *sattr)
{
 struct nfs_fh *fh;
 struct nfs_fattr *fattr;
 struct nfs_symlinkargs arg = {
  .fromfh = NFS_FH(dir),
  .fromname = dentry->d_name.name,
  .fromlen = dentry->d_name.len,
  .pages = &page,
  .pathlen = len,
  .sattr = sattr
 };
 struct rpc_message msg = {
  .rpc_proc = &nfs_procedures[NFSPROC_SYMLINK],
  .rpc_argp = &arg,
 };
 int status = -ENAMETOOLONG;

 dprintk("NFS call  symlink %pd\n", dentry);

 if (len > NFS2_MAXPATHLEN)
  goto out;

 fh = nfs_alloc_fhandle();
 fattr = nfs_alloc_fattr();
 status = -ENOMEM;
 if (fh == ((void*)0) || fattr == ((void*)0))
  goto out_free;

 status = rpc_call_sync(NFS_CLIENT(dir), &msg, 0);
 nfs_mark_for_revalidate(dir);






 if (status == 0)
  status = nfs_instantiate(dentry, fh, fattr, ((void*)0));

out_free:
 nfs_free_fattr(fattr);
 nfs_free_fhandle(fh);
out:
 dprintk("NFS reply symlink: %d\n", status);
 return status;
}
