
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nilfs_palloc_cache {int lock; int prev_bitmap; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {struct nilfs_palloc_cache* mi_palloc_cache; } ;


 TYPE_1__* NILFS_MDT (struct inode*) ;
 int nilfs_palloc_bitmap_blkoff (struct inode*,unsigned long) ;
 int nilfs_palloc_get_block (struct inode*,int ,int,int *,struct buffer_head**,int *,int *) ;

__attribute__((used)) static int nilfs_palloc_get_bitmap_block(struct inode *inode,
      unsigned long group,
      int create, struct buffer_head **bhp)
{
 struct nilfs_palloc_cache *cache = NILFS_MDT(inode)->mi_palloc_cache;

 return nilfs_palloc_get_block(inode,
          nilfs_palloc_bitmap_blkoff(inode, group),
          create, ((void*)0), bhp,
          &cache->prev_bitmap, &cache->lock);
}
