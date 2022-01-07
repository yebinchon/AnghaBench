
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfs_inode {scalar_t__ fileid; int fh; } ;
struct nfs_entry {TYPE_2__* fh; TYPE_1__* fattr; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_4__ {scalar_t__ size; } ;
struct TYPE_3__ {scalar_t__ fileid; } ;


 struct nfs_inode* NFS_I (struct inode*) ;
 scalar_t__ NFS_STALE (struct inode*) ;
 struct inode* d_inode (struct dentry*) ;
 scalar_t__ d_really_is_negative (struct dentry*) ;
 scalar_t__ is_bad_inode (struct inode*) ;
 scalar_t__ nfs_compare_fh (TYPE_2__*,int *) ;

__attribute__((used)) static
int nfs_same_file(struct dentry *dentry, struct nfs_entry *entry)
{
 struct inode *inode;
 struct nfs_inode *nfsi;

 if (d_really_is_negative(dentry))
  return 0;

 inode = d_inode(dentry);
 if (is_bad_inode(inode) || NFS_STALE(inode))
  return 0;

 nfsi = NFS_I(inode);
 if (entry->fattr->fileid != nfsi->fileid)
  return 0;
 if (entry->fh->size && nfs_compare_fh(entry->fh, &nfsi->fh) != 0)
  return 0;
 return 1;
}
