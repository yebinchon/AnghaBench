
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct super_block {int dummy; } ;
struct inode {int i_ino; } ;
struct ext4_group_desc {int dummy; } ;
typedef int ext4_group_t ;
struct TYPE_2__ {int i_block_group; int i_last_alloc_group; } ;


 TYPE_1__* EXT4_I (struct inode*) ;
 int EXT4_SB (struct super_block*) ;
 int ext4_flex_bg_size (int ) ;
 scalar_t__ ext4_free_group_clusters (struct super_block*,struct ext4_group_desc*) ;
 scalar_t__ ext4_free_inodes_count (struct super_block*,struct ext4_group_desc*) ;
 struct ext4_group_desc* ext4_get_group_desc (struct super_block*,int,int *) ;
 int ext4_get_groups_count (struct super_block*) ;
 int find_group_orlov (struct super_block*,struct inode*,int*,int ,int *) ;

__attribute__((used)) static int find_group_other(struct super_block *sb, struct inode *parent,
       ext4_group_t *group, umode_t mode)
{
 ext4_group_t parent_group = EXT4_I(parent)->i_block_group;
 ext4_group_t i, last, ngroups = ext4_get_groups_count(sb);
 struct ext4_group_desc *desc;
 int flex_size = ext4_flex_bg_size(EXT4_SB(sb));
 if (flex_size > 1) {
  int retry = 0;

 try_again:
  parent_group &= ~(flex_size-1);
  last = parent_group + flex_size;
  if (last > ngroups)
   last = ngroups;
  for (i = parent_group; i < last; i++) {
   desc = ext4_get_group_desc(sb, i, ((void*)0));
   if (desc && ext4_free_inodes_count(sb, desc)) {
    *group = i;
    return 0;
   }
  }
  if (!retry && EXT4_I(parent)->i_last_alloc_group != ~0) {
   retry = 1;
   parent_group = EXT4_I(parent)->i_last_alloc_group;
   goto try_again;
  }





  *group = parent_group + flex_size;
  if (*group > ngroups)
   *group = 0;
  return find_group_orlov(sb, parent, group, mode, ((void*)0));
 }




 *group = parent_group;
 desc = ext4_get_group_desc(sb, *group, ((void*)0));
 if (desc && ext4_free_inodes_count(sb, desc) &&
     ext4_free_group_clusters(sb, desc))
  return 0;
 *group = (*group + parent->i_ino) % ngroups;





 for (i = 1; i < ngroups; i <<= 1) {
  *group += i;
  if (*group >= ngroups)
   *group -= ngroups;
  desc = ext4_get_group_desc(sb, *group, ((void*)0));
  if (desc && ext4_free_inodes_count(sb, desc) &&
      ext4_free_group_clusters(sb, desc))
   return 0;
 }





 *group = parent_group;
 for (i = 0; i < ngroups; i++) {
  if (++*group >= ngroups)
   *group = 0;
  desc = ext4_get_group_desc(sb, *group, ((void*)0));
  if (desc && ext4_free_inodes_count(sb, desc))
   return 0;
 }

 return -1;
}
