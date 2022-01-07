
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct super_block {int dummy; } ;
struct hfsplus_extent {scalar_t__ block_count; scalar_t__ start_block; } ;
struct TYPE_4__ {TYPE_1__* ext_tree; } ;
struct TYPE_3__ {int tree_lock; } ;


 int EIO ;
 int EXTENT ;
 TYPE_2__* HFSPLUS_SB (struct super_block*) ;
 int WARN_ON (int ) ;
 scalar_t__ be32_to_cpu (scalar_t__) ;
 scalar_t__ cpu_to_be32 (scalar_t__) ;
 int hfs_dbg (int ,char*,scalar_t__,scalar_t__) ;
 int hfsplus_block_free (struct super_block*,scalar_t__,scalar_t__) ;
 int hfsplus_dump_extent (struct hfsplus_extent*) ;
 int mutex_is_locked (int *) ;
 int pr_err (char*) ;

__attribute__((used)) static int hfsplus_free_extents(struct super_block *sb,
    struct hfsplus_extent *extent,
    u32 offset, u32 block_nr)
{
 u32 count, start;
 int i;
 int err = 0;


 WARN_ON(mutex_is_locked(&HFSPLUS_SB(sb)->ext_tree->tree_lock));

 hfsplus_dump_extent(extent);
 for (i = 0; i < 8; extent++, i++) {
  count = be32_to_cpu(extent->block_count);
  if (offset == count)
   goto found;
  else if (offset < count)
   break;
  offset -= count;
 }

 return -EIO;
found:
 for (;;) {
  start = be32_to_cpu(extent->start_block);
  if (count <= block_nr) {
   err = hfsplus_block_free(sb, start, count);
   if (err) {
    pr_err("can't free extent\n");
    hfs_dbg(EXTENT, " start: %u count: %u\n",
     start, count);
   }
   extent->block_count = 0;
   extent->start_block = 0;
   block_nr -= count;
  } else {
   count -= block_nr;
   err = hfsplus_block_free(sb, start + count, block_nr);
   if (err) {
    pr_err("can't free extent\n");
    hfs_dbg(EXTENT, " start: %u count: %u\n",
     start, count);
   }
   extent->block_count = cpu_to_be32(count);
   block_nr = 0;
  }
  if (!block_nr || !i) {




   return err;
  }
  i--;
  extent--;
  count = be32_to_cpu(extent->block_count);
 }
}
