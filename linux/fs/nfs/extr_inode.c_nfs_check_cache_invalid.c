
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {scalar_t__ (* have_delegation ) (struct inode*,int ) ;} ;


 int FMODE_READ ;
 TYPE_1__* NFS_PROTO (struct inode*) ;
 int nfs_check_cache_invalid_delegated (struct inode*,unsigned long) ;
 int nfs_check_cache_invalid_not_delegated (struct inode*,unsigned long) ;
 scalar_t__ stub1 (struct inode*,int ) ;

bool nfs_check_cache_invalid(struct inode *inode, unsigned long flags)
{
 if (NFS_PROTO(inode)->have_delegation(inode, FMODE_READ))
  return nfs_check_cache_invalid_delegated(inode, flags);

 return nfs_check_cache_invalid_not_delegated(inode, flags);
}
