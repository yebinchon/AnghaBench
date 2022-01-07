
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nilfs_palloc_cache {int lock; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {struct nilfs_palloc_cache* mi_palloc_cache; } ;


 TYPE_1__* NILFS_MDT (struct inode*) ;
 int spin_lock_init (int *) ;

void nilfs_palloc_setup_cache(struct inode *inode,
         struct nilfs_palloc_cache *cache)
{
 NILFS_MDT(inode)->mi_palloc_cache = cache;
 spin_lock_init(&cache->lock);
}
