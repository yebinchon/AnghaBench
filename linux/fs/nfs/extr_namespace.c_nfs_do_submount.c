
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;
struct nfs_fh {int dummy; } ;
struct nfs_fattr {int dummy; } ;
struct nfs_clone_mount {int authflavor; struct nfs_fattr* fattr; struct nfs_fh* fh; struct dentry* dentry; int sb; } ;
struct dentry {int d_sb; } ;
typedef int rpc_authflavor_t ;


 int ENOMEM ;
 struct vfsmount* ERR_CAST (char*) ;
 struct vfsmount* ERR_PTR (int ) ;
 int GFP_USER ;
 scalar_t__ IS_ERR (char*) ;
 int NFS_SB (int ) ;
 int PAGE_SIZE ;
 scalar_t__ __get_free_page (int ) ;
 int free_page (unsigned long) ;
 char* nfs_devname (struct dentry*,char*,int ) ;
 struct vfsmount* nfs_do_clone_mount (int ,char*,struct nfs_clone_mount*) ;

struct vfsmount *nfs_do_submount(struct dentry *dentry, struct nfs_fh *fh,
     struct nfs_fattr *fattr, rpc_authflavor_t authflavor)
{
 struct nfs_clone_mount mountdata = {
  .sb = dentry->d_sb,
  .dentry = dentry,
  .fh = fh,
  .fattr = fattr,
  .authflavor = authflavor,
 };
 struct vfsmount *mnt;
 char *page = (char *) __get_free_page(GFP_USER);
 char *devname;

 if (page == ((void*)0))
  return ERR_PTR(-ENOMEM);

 devname = nfs_devname(dentry, page, PAGE_SIZE);
 if (IS_ERR(devname))
  mnt = ERR_CAST(devname);
 else
  mnt = nfs_do_clone_mount(NFS_SB(dentry->d_sb), devname, &mountdata);

 free_page((unsigned long)page);
 return mnt;
}
