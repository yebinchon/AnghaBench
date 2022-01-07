
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nilfs_palloc_cache {int lock; int prev_bitmap; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {struct nilfs_palloc_cache* mi_palloc_cache; } ;


 TYPE_1__* NILFS_MDT (struct inode*) ;
 int nilfs_palloc_bitmap_blkoff (struct inode*,unsigned long) ;
 int nilfs_palloc_delete_block (struct inode*,int ,int *,int *) ;

__attribute__((used)) static int nilfs_palloc_delete_bitmap_block(struct inode *inode,
         unsigned long group)
{
 struct nilfs_palloc_cache *cache = NILFS_MDT(inode)->mi_palloc_cache;

 return nilfs_palloc_delete_block(inode,
      nilfs_palloc_bitmap_blkoff(inode,
            group),
      &cache->prev_bitmap, &cache->lock);
}
