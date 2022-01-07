
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nilfs_palloc_cache {int lock; int prev_entry; } ;
struct inode {int dummy; } ;
typedef int __u64 ;
struct TYPE_2__ {struct nilfs_palloc_cache* mi_palloc_cache; } ;


 TYPE_1__* NILFS_MDT (struct inode*) ;
 int nilfs_palloc_delete_block (struct inode*,int ,int *,int *) ;
 int nilfs_palloc_entry_blkoff (struct inode*,int ) ;

__attribute__((used)) static int nilfs_palloc_delete_entry_block(struct inode *inode, __u64 nr)
{
 struct nilfs_palloc_cache *cache = NILFS_MDT(inode)->mi_palloc_cache;

 return nilfs_palloc_delete_block(inode,
      nilfs_palloc_entry_blkoff(inode, nr),
      &cache->prev_entry, &cache->lock);
}
