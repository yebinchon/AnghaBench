
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int i_size; int i_ctime; int i_mtime; } ;
struct nfs_inode {int flags; TYPE_1__ vfs_inode; } ;
struct nfs_fscache_inode_auxdata {void* ctime; void* mtime; } ;
struct inode {int dummy; } ;
struct fscache_cookie {int dummy; } ;
struct file {int dummy; } ;
typedef int auxdata ;


 int FSCACHE ;
 struct nfs_inode* NFS_I (struct inode*) ;
 int NFS_INO_FSCACHE ;
 int clear_bit (int ,int *) ;
 int dfprintk (int ,char*,struct nfs_inode*) ;
 scalar_t__ fscache_cookie_enabled (struct fscache_cookie*) ;
 int fscache_cookie_valid (struct fscache_cookie*) ;
 int fscache_disable_cookie (struct fscache_cookie*,struct nfs_fscache_inode_auxdata*,int) ;
 int fscache_enable_cookie (struct fscache_cookie*,struct nfs_fscache_inode_auxdata*,int ,int ,struct inode*) ;
 int fscache_uncache_all_inode_pages (struct fscache_cookie*,struct inode*) ;
 scalar_t__ inode_is_open_for_write (struct inode*) ;
 int memset (struct nfs_fscache_inode_auxdata*,int ,int) ;
 int nfs_fscache_can_enable ;
 struct fscache_cookie* nfs_i_fscache (struct inode*) ;
 int set_bit (int ,int *) ;
 void* timespec64_to_timespec (int ) ;

void nfs_fscache_open_file(struct inode *inode, struct file *filp)
{
 struct nfs_fscache_inode_auxdata auxdata;
 struct nfs_inode *nfsi = NFS_I(inode);
 struct fscache_cookie *cookie = nfs_i_fscache(inode);

 if (!fscache_cookie_valid(cookie))
  return;

 memset(&auxdata, 0, sizeof(auxdata));
 auxdata.mtime = timespec64_to_timespec(nfsi->vfs_inode.i_mtime);
 auxdata.ctime = timespec64_to_timespec(nfsi->vfs_inode.i_ctime);

 if (inode_is_open_for_write(inode)) {
  dfprintk(FSCACHE, "NFS: nfsi 0x%p disabling cache\n", nfsi);
  clear_bit(NFS_INO_FSCACHE, &nfsi->flags);
  fscache_disable_cookie(cookie, &auxdata, 1);
  fscache_uncache_all_inode_pages(cookie, inode);
 } else {
  dfprintk(FSCACHE, "NFS: nfsi 0x%p enabling cache\n", nfsi);
  fscache_enable_cookie(cookie, &auxdata, nfsi->vfs_inode.i_size,
          nfs_fscache_can_enable, inode);
  if (fscache_cookie_enabled(cookie))
   set_bit(NFS_INO_FSCACHE, &NFS_I(inode)->flags);
 }
}
