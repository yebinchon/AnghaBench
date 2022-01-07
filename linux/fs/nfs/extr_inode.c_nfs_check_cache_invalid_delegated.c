
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int cache_validity; } ;


 TYPE_1__* NFS_I (struct inode*) ;
 unsigned long NFS_INO_REVAL_FORCED ;
 unsigned long NFS_INO_REVAL_PAGECACHE ;
 unsigned long READ_ONCE (int ) ;

__attribute__((used)) static bool nfs_check_cache_invalid_delegated(struct inode *inode, unsigned long flags)
{
 unsigned long cache_validity = READ_ONCE(NFS_I(inode)->cache_validity);


 if (flags == NFS_INO_REVAL_PAGECACHE &&
     !(cache_validity & NFS_INO_REVAL_FORCED))
  return 0;
 return (cache_validity & flags) != 0;
}
