
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int cache_validity; } ;


 TYPE_1__* NFS_I (struct inode*) ;
 int NFS_INO_INVALID_ATTR ;
 int NFS_INO_INVALID_LABEL ;
 scalar_t__ nfs_attribute_cache_expired (struct inode*) ;

__attribute__((used)) static bool nfs_need_revalidate_inode(struct inode *inode)
{
 if (NFS_I(inode)->cache_validity &
   (NFS_INO_INVALID_ATTR|NFS_INO_INVALID_LABEL))
  return 1;
 if (nfs_attribute_cache_expired(inode))
  return 1;
 return 0;
}
