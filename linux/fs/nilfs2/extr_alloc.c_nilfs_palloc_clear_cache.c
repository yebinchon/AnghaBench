
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * bh; } ;
struct TYPE_7__ {int * bh; } ;
struct TYPE_6__ {int * bh; } ;
struct nilfs_palloc_cache {int lock; TYPE_1__ prev_entry; TYPE_3__ prev_bitmap; TYPE_2__ prev_desc; } ;
struct inode {int dummy; } ;
struct TYPE_8__ {struct nilfs_palloc_cache* mi_palloc_cache; } ;


 TYPE_4__* NILFS_MDT (struct inode*) ;
 int brelse (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void nilfs_palloc_clear_cache(struct inode *inode)
{
 struct nilfs_palloc_cache *cache = NILFS_MDT(inode)->mi_palloc_cache;

 spin_lock(&cache->lock);
 brelse(cache->prev_desc.bh);
 brelse(cache->prev_bitmap.bh);
 brelse(cache->prev_entry.bh);
 cache->prev_desc.bh = ((void*)0);
 cache->prev_bitmap.bh = ((void*)0);
 cache->prev_entry.bh = ((void*)0);
 spin_unlock(&cache->lock);
}
