
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct list_head {int dummy; } ;
struct ext4_group_desc {int dummy; } ;
typedef scalar_t__ ext4_group_t ;
struct TYPE_2__ {scalar_t__ s_groups_count; int s_itb_per_group; } ;


 int EFSCORRUPTED ;
 int EXT4_FMR_OWN_BLKBM ;
 int EXT4_FMR_OWN_INOBM ;
 int EXT4_FMR_OWN_INODES ;
 TYPE_1__* EXT4_SB (struct super_block*) ;
 int INIT_LIST_HEAD (struct list_head*) ;
 int ext4_block_bitmap (struct super_block*,struct ext4_group_desc*) ;
 struct ext4_group_desc* ext4_get_group_desc (struct super_block*,scalar_t__,int *) ;
 int ext4_getfsmap_compare ;
 int ext4_getfsmap_fill (struct list_head*,int ,int,int ) ;
 int ext4_getfsmap_find_sb (struct super_block*,scalar_t__,struct list_head*) ;
 int ext4_getfsmap_free_fixed_metadata (struct list_head*) ;
 int ext4_getfsmap_merge_fixed_metadata (struct list_head*) ;
 int ext4_inode_bitmap (struct super_block*,struct ext4_group_desc*) ;
 int ext4_inode_table (struct super_block*,struct ext4_group_desc*) ;
 int list_sort (int *,struct list_head*,int ) ;

__attribute__((used)) static int ext4_getfsmap_find_fixed_metadata(struct super_block *sb,
          struct list_head *meta_list)
{
 struct ext4_group_desc *gdp;
 ext4_group_t agno;
 int error;

 INIT_LIST_HEAD(meta_list);


 for (agno = 0; agno < EXT4_SB(sb)->s_groups_count; agno++) {
  gdp = ext4_get_group_desc(sb, agno, ((void*)0));
  if (!gdp) {
   error = -EFSCORRUPTED;
   goto err;
  }


  error = ext4_getfsmap_find_sb(sb, agno, meta_list);
  if (error)
   goto err;


  error = ext4_getfsmap_fill(meta_list,
        ext4_block_bitmap(sb, gdp), 1,
        EXT4_FMR_OWN_BLKBM);
  if (error)
   goto err;


  error = ext4_getfsmap_fill(meta_list,
        ext4_inode_bitmap(sb, gdp), 1,
        EXT4_FMR_OWN_INOBM);
  if (error)
   goto err;


  error = ext4_getfsmap_fill(meta_list,
        ext4_inode_table(sb, gdp),
        EXT4_SB(sb)->s_itb_per_group,
        EXT4_FMR_OWN_INODES);
  if (error)
   goto err;
 }


 list_sort(((void*)0), meta_list, ext4_getfsmap_compare);


 ext4_getfsmap_merge_fixed_metadata(meta_list);

 return 0;
err:
 ext4_getfsmap_free_fixed_metadata(meta_list);
 return error;
}
