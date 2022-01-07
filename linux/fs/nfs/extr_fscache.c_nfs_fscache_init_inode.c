
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct nfs_server {TYPE_2__* nfs_client; scalar_t__ fscache; } ;
struct inode {int i_size; int i_sb; int i_ctime; int i_mtime; int i_mode; } ;
struct TYPE_7__ {int size; int data; } ;
struct nfs_inode {struct inode vfs_inode; TYPE_3__ fh; int * fscache; } ;
struct nfs_fscache_inode_auxdata {int change_attr; void* ctime; void* mtime; } ;
typedef int auxdata ;
struct TYPE_8__ {int fscache; } ;
struct TYPE_6__ {TYPE_1__* rpc_ops; } ;
struct TYPE_5__ {int version; } ;


 struct nfs_inode* NFS_I (struct inode*) ;
 TYPE_4__* NFS_SB (int ) ;
 struct nfs_server* NFS_SERVER (struct inode*) ;
 scalar_t__ S_ISREG (int ) ;
 int * fscache_acquire_cookie (int ,int *,int ,int ,struct nfs_fscache_inode_auxdata*,int,struct nfs_inode*,int ,int) ;
 int inode_peek_iversion_raw (struct inode*) ;
 int memset (struct nfs_fscache_inode_auxdata*,int ,int) ;
 int nfs_fscache_inode_object_def ;
 void* timespec64_to_timespec (int ) ;

void nfs_fscache_init_inode(struct inode *inode)
{
 struct nfs_fscache_inode_auxdata auxdata;
 struct nfs_server *nfss = NFS_SERVER(inode);
 struct nfs_inode *nfsi = NFS_I(inode);

 nfsi->fscache = ((void*)0);
 if (!(nfss->fscache && S_ISREG(inode->i_mode)))
  return;

 memset(&auxdata, 0, sizeof(auxdata));
 auxdata.mtime = timespec64_to_timespec(nfsi->vfs_inode.i_mtime);
 auxdata.ctime = timespec64_to_timespec(nfsi->vfs_inode.i_ctime);

 if (NFS_SERVER(&nfsi->vfs_inode)->nfs_client->rpc_ops->version == 4)
  auxdata.change_attr = inode_peek_iversion_raw(&nfsi->vfs_inode);

 nfsi->fscache = fscache_acquire_cookie(NFS_SB(inode->i_sb)->fscache,
            &nfs_fscache_inode_object_def,
            nfsi->fh.data, nfsi->fh.size,
            &auxdata, sizeof(auxdata),
            nfsi, nfsi->vfs_inode.i_size, 0);
}
