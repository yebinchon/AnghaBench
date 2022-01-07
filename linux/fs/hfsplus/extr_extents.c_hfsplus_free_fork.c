
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct super_block {int dummy; } ;
struct hfsplus_fork_raw {TYPE_4__* extents; int total_blocks; } ;
struct hfs_find_data {TYPE_3__* tree; TYPE_2__* key; } ;
typedef TYPE_4__* hfsplus_extent_rec ;
struct TYPE_12__ {int ext_tree; } ;
struct TYPE_11__ {int block_count; } ;
struct TYPE_10__ {int tree_lock; } ;
struct TYPE_8__ {int start_block; } ;
struct TYPE_9__ {TYPE_1__ ext; } ;


 TYPE_7__* HFSPLUS_SB (struct super_block*) ;
 int __hfsplus_ext_read_extent (struct hfs_find_data*,TYPE_4__*,scalar_t__,scalar_t__,int) ;
 scalar_t__ be32_to_cpu (int ) ;
 int hfs_brec_remove (struct hfs_find_data*) ;
 int hfs_find_exit (struct hfs_find_data*) ;
 int hfs_find_init (int ,struct hfs_find_data*) ;
 int hfsplus_free_extents (struct super_block*,TYPE_4__*,scalar_t__,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int hfsplus_free_fork(struct super_block *sb, u32 cnid,
  struct hfsplus_fork_raw *fork, int type)
{
 struct hfs_find_data fd;
 hfsplus_extent_rec ext_entry;
 u32 total_blocks, blocks, start;
 int res, i;

 total_blocks = be32_to_cpu(fork->total_blocks);
 if (!total_blocks)
  return 0;

 blocks = 0;
 for (i = 0; i < 8; i++)
  blocks += be32_to_cpu(fork->extents[i].block_count);

 res = hfsplus_free_extents(sb, fork->extents, blocks, blocks);
 if (res)
  return res;
 if (total_blocks == blocks)
  return 0;

 res = hfs_find_init(HFSPLUS_SB(sb)->ext_tree, &fd);
 if (res)
  return res;
 do {
  res = __hfsplus_ext_read_extent(&fd, ext_entry, cnid,
      total_blocks, type);
  if (res)
   break;
  start = be32_to_cpu(fd.key->ext.start_block);
  hfs_brec_remove(&fd);

  mutex_unlock(&fd.tree->tree_lock);
  hfsplus_free_extents(sb, ext_entry, total_blocks - start,
         total_blocks);
  total_blocks = start;
  mutex_lock(&fd.tree->tree_lock);
 } while (total_blocks > blocks);
 hfs_find_exit(&fd);

 return res;
}
