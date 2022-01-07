
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_find_desc {int fh; struct nfs_fattr* fattr; } ;
struct nfs_fattr {int mode; int fileid; } ;
struct inode {int i_mode; } ;


 int NFS_FH (struct inode*) ;
 int nfs_copy_fh (int ,int ) ;
 int set_nfs_fileid (struct inode*,int ) ;

__attribute__((used)) static int
nfs_init_locked(struct inode *inode, void *opaque)
{
 struct nfs_find_desc *desc = (struct nfs_find_desc *)opaque;
 struct nfs_fattr *fattr = desc->fattr;

 set_nfs_fileid(inode, fattr->fileid);
 inode->i_mode = fattr->mode;
 nfs_copy_fh(NFS_FH(inode), desc->fh);
 return 0;
}
