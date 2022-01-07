
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_fattr {int valid; } ;


 int NFS_ATTR_FATTR_MOUNTED_ON_FILEID ;
 int NFS_ATTR_FATTR_MOUNTPOINT ;
 int NFS_ATTR_FATTR_V4_REFERRAL ;

__attribute__((used)) static inline int nfs_attr_use_mounted_on_fileid(struct nfs_fattr *fattr)
{
 if (((fattr->valid & NFS_ATTR_FATTR_MOUNTED_ON_FILEID) == 0) ||
     (((fattr->valid & NFS_ATTR_FATTR_MOUNTPOINT) == 0) &&
      ((fattr->valid & NFS_ATTR_FATTR_V4_REFERRAL) == 0)))
  return 0;
 return 1;
}
