
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* bpr_ptr; } ;
struct TYPE_3__ {void* bpr_ptr; } ;
struct nilfs_btree_path {int * bp_op; TYPE_2__ bp_newreq; TYPE_1__ bp_oldreq; scalar_t__ bp_index; int * bp_sib_bh; int * bp_bh; } ;


 int GFP_NOFS ;
 void* NILFS_BMAP_INVALID_PTR ;
 int NILFS_BTREE_LEVEL_DATA ;
 int NILFS_BTREE_LEVEL_MAX ;
 struct nilfs_btree_path* kmem_cache_alloc (int ,int ) ;
 int nilfs_btree_path_cache ;

__attribute__((used)) static struct nilfs_btree_path *nilfs_btree_alloc_path(void)
{
 struct nilfs_btree_path *path;
 int level = NILFS_BTREE_LEVEL_DATA;

 path = kmem_cache_alloc(nilfs_btree_path_cache, GFP_NOFS);
 if (path == ((void*)0))
  goto out;

 for (; level < NILFS_BTREE_LEVEL_MAX; level++) {
  path[level].bp_bh = ((void*)0);
  path[level].bp_sib_bh = ((void*)0);
  path[level].bp_index = 0;
  path[level].bp_oldreq.bpr_ptr = NILFS_BMAP_INVALID_PTR;
  path[level].bp_newreq.bpr_ptr = NILFS_BMAP_INVALID_PTR;
  path[level].bp_op = ((void*)0);
 }

out:
 return path;
}
