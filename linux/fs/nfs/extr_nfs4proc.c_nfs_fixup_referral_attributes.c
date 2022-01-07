
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_fattr {int valid; int mode; int nlink; } ;


 int NFS_ATTR_FATTR_FILEID ;
 int NFS_ATTR_FATTR_FSID ;
 int NFS_ATTR_FATTR_MODE ;
 int NFS_ATTR_FATTR_MOUNTED_ON_FILEID ;
 int NFS_ATTR_FATTR_NLINK ;
 int NFS_ATTR_FATTR_TYPE ;
 int NFS_ATTR_FATTR_V4_LOCATIONS ;
 int NFS_ATTR_FATTR_V4_REFERRAL ;
 int S_IFDIR ;
 int S_IRUGO ;
 int S_IXUGO ;

__attribute__((used)) static void nfs_fixup_referral_attributes(struct nfs_fattr *fattr)
{
 if (!(((fattr->valid & NFS_ATTR_FATTR_MOUNTED_ON_FILEID) ||
        (fattr->valid & NFS_ATTR_FATTR_FILEID)) &&
       (fattr->valid & NFS_ATTR_FATTR_FSID) &&
       (fattr->valid & NFS_ATTR_FATTR_V4_LOCATIONS)))
  return;

 fattr->valid |= NFS_ATTR_FATTR_TYPE | NFS_ATTR_FATTR_MODE |
  NFS_ATTR_FATTR_NLINK | NFS_ATTR_FATTR_V4_REFERRAL;
 fattr->mode = S_IFDIR | S_IRUGO | S_IXUGO;
 fattr->nlink = 2;
}
