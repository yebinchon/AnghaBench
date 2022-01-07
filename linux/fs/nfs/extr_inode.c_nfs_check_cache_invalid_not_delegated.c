
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int cache_validity; } ;


 TYPE_1__* NFS_I (struct inode*) ;
 unsigned long READ_ONCE (int ) ;
 scalar_t__ nfs_attribute_timeout (struct inode*) ;

__attribute__((used)) static bool nfs_check_cache_invalid_not_delegated(struct inode *inode, unsigned long flags)
{
 unsigned long cache_validity = READ_ONCE(NFS_I(inode)->cache_validity);

 if ((cache_validity & flags) != 0)
  return 1;
 if (nfs_attribute_timeout(inode))
  return 1;
 return 0;
}
