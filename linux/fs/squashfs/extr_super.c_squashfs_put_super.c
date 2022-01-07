
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {struct squashfs_sb_info* s_fs_info; } ;
struct squashfs_sb_info {struct squashfs_sb_info* xattr_id_table; struct squashfs_sb_info* inode_lookup_table; struct squashfs_sb_info* meta_index; struct squashfs_sb_info* fragment_index; struct squashfs_sb_info* id_table; int read_page; int fragment_cache; int block_cache; } ;


 int kfree (struct squashfs_sb_info*) ;
 int squashfs_cache_delete (int ) ;
 int squashfs_decompressor_destroy (struct squashfs_sb_info*) ;

__attribute__((used)) static void squashfs_put_super(struct super_block *sb)
{
 if (sb->s_fs_info) {
  struct squashfs_sb_info *sbi = sb->s_fs_info;
  squashfs_cache_delete(sbi->block_cache);
  squashfs_cache_delete(sbi->fragment_cache);
  squashfs_cache_delete(sbi->read_page);
  squashfs_decompressor_destroy(sbi);
  kfree(sbi->id_table);
  kfree(sbi->fragment_index);
  kfree(sbi->meta_index);
  kfree(sbi->inode_lookup_table);
  kfree(sbi->xattr_id_table);
  kfree(sb->s_fs_info);
  sb->s_fs_info = ((void*)0);
 }
}
