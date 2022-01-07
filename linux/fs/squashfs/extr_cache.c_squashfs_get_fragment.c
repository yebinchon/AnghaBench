
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct super_block {struct squashfs_sb_info* s_fs_info; } ;
struct squashfs_sb_info {int fragment_cache; } ;
struct squashfs_cache_entry {int dummy; } ;


 struct squashfs_cache_entry* squashfs_cache_get (struct super_block*,int ,int ,int) ;

struct squashfs_cache_entry *squashfs_get_fragment(struct super_block *sb,
    u64 start_block, int length)
{
 struct squashfs_sb_info *msblk = sb->s_fs_info;

 return squashfs_cache_get(sb, msblk->fragment_cache, start_block,
  length);
}
