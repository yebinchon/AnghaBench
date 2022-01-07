
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int i_ctime; int i_mtime; } ;
struct nfs_inode {int * fscache; TYPE_1__ vfs_inode; } ;
struct nfs_fscache_inode_auxdata {void* ctime; void* mtime; } ;
struct inode {int dummy; } ;
struct fscache_cookie {int dummy; } ;
typedef int auxdata ;


 int FSCACHE ;
 struct nfs_inode* NFS_I (struct inode*) ;
 int dfprintk (int ,char*,struct nfs_inode*,struct fscache_cookie*) ;
 int fscache_relinquish_cookie (struct fscache_cookie*,struct nfs_fscache_inode_auxdata*,int) ;
 int memset (struct nfs_fscache_inode_auxdata*,int ,int) ;
 struct fscache_cookie* nfs_i_fscache (struct inode*) ;
 void* timespec64_to_timespec (int ) ;

void nfs_fscache_clear_inode(struct inode *inode)
{
 struct nfs_fscache_inode_auxdata auxdata;
 struct nfs_inode *nfsi = NFS_I(inode);
 struct fscache_cookie *cookie = nfs_i_fscache(inode);

 dfprintk(FSCACHE, "NFS: clear cookie (0x%p/0x%p)\n", nfsi, cookie);

 memset(&auxdata, 0, sizeof(auxdata));
 auxdata.mtime = timespec64_to_timespec(nfsi->vfs_inode.i_mtime);
 auxdata.ctime = timespec64_to_timespec(nfsi->vfs_inode.i_ctime);
 fscache_relinquish_cookie(cookie, &auxdata, 0);
 nfsi->fscache = ((void*)0);
}
