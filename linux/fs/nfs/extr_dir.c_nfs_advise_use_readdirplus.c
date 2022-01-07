
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_inode {int flags; int open_files; } ;
struct inode {int dummy; } ;


 int NFS_CAP_READDIRPLUS ;
 struct nfs_inode* NFS_I (struct inode*) ;
 int NFS_INO_ADVISE_RDPLUS ;
 int list_empty (int *) ;
 scalar_t__ nfs_server_capable (struct inode*,int ) ;
 int set_bit (int ,int *) ;

void nfs_advise_use_readdirplus(struct inode *dir)
{
 struct nfs_inode *nfsi = NFS_I(dir);

 if (nfs_server_capable(dir, NFS_CAP_READDIRPLUS) &&
     !list_empty(&nfsi->open_files))
  set_bit(NFS_INO_ADVISE_RDPLUS, &nfsi->flags);
}
