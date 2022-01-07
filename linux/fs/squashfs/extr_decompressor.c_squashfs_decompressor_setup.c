
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {struct squashfs_sb_info* s_fs_info; } ;
struct squashfs_sb_info {int dummy; } ;


 scalar_t__ IS_ERR (void*) ;
 void* get_comp_opts (struct super_block*,unsigned short) ;
 int kfree (void*) ;
 void* squashfs_decompressor_create (struct squashfs_sb_info*,void*) ;

void *squashfs_decompressor_setup(struct super_block *sb, unsigned short flags)
{
 struct squashfs_sb_info *msblk = sb->s_fs_info;
 void *stream, *comp_opts = get_comp_opts(sb, flags);

 if (IS_ERR(comp_opts))
  return comp_opts;

 stream = squashfs_decompressor_create(msblk, comp_opts);
 if (IS_ERR(stream))
  kfree(comp_opts);

 return stream;
}
