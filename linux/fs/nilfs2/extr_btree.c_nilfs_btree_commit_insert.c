
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ bpr_ptr; } ;
struct nilfs_btree_path {int (* bp_op ) (struct nilfs_bmap*,struct nilfs_btree_path*,int,scalar_t__*,scalar_t__*) ;TYPE_1__ bp_newreq; } ;
struct nilfs_bmap {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef scalar_t__ __u64 ;


 scalar_t__ NILFS_BMAP_USE_VBN (struct nilfs_bmap*) ;
 size_t NILFS_BTREE_LEVEL_DATA ;
 int NILFS_BTREE_LEVEL_NODE_MIN ;
 int nilfs_bmap_commit_alloc_ptr (struct nilfs_bmap*,TYPE_1__*,struct inode*) ;
 int nilfs_bmap_dirty (struct nilfs_bmap*) ;
 struct inode* nilfs_bmap_get_dat (struct nilfs_bmap*) ;
 int nilfs_bmap_set_dirty (struct nilfs_bmap*) ;
 int nilfs_bmap_set_target_v (struct nilfs_bmap*,scalar_t__,scalar_t__) ;
 int set_buffer_nilfs_volatile (struct buffer_head*) ;
 int stub1 (struct nilfs_bmap*,struct nilfs_btree_path*,int,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static void nilfs_btree_commit_insert(struct nilfs_bmap *btree,
          struct nilfs_btree_path *path,
          int maxlevel, __u64 key, __u64 ptr)
{
 struct inode *dat = ((void*)0);
 int level;

 set_buffer_nilfs_volatile((struct buffer_head *)((unsigned long)ptr));
 ptr = path[NILFS_BTREE_LEVEL_DATA].bp_newreq.bpr_ptr;
 if (NILFS_BMAP_USE_VBN(btree)) {
  nilfs_bmap_set_target_v(btree, key, ptr);
  dat = nilfs_bmap_get_dat(btree);
 }

 for (level = NILFS_BTREE_LEVEL_NODE_MIN; level <= maxlevel; level++) {
  nilfs_bmap_commit_alloc_ptr(btree,
         &path[level - 1].bp_newreq, dat);
  path[level].bp_op(btree, path, level, &key, &ptr);
 }

 if (!nilfs_bmap_dirty(btree))
  nilfs_bmap_set_dirty(btree);
}
