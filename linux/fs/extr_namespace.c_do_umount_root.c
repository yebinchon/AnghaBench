
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_umount; int s_root; } ;
struct fs_context {int dummy; } ;


 scalar_t__ IS_ERR (struct fs_context*) ;
 int PTR_ERR (struct fs_context*) ;
 int SB_RDONLY ;
 int down_write (int *) ;
 struct fs_context* fs_context_for_reconfigure (int ,int ,int ) ;
 int parse_monolithic_mount_data (struct fs_context*,int *) ;
 int put_fs_context (struct fs_context*) ;
 int reconfigure_super (struct fs_context*) ;
 int sb_rdonly (struct super_block*) ;
 int up_write (int *) ;

__attribute__((used)) static int do_umount_root(struct super_block *sb)
{
 int ret = 0;

 down_write(&sb->s_umount);
 if (!sb_rdonly(sb)) {
  struct fs_context *fc;

  fc = fs_context_for_reconfigure(sb->s_root, SB_RDONLY,
      SB_RDONLY);
  if (IS_ERR(fc)) {
   ret = PTR_ERR(fc);
  } else {
   ret = parse_monolithic_mount_data(fc, ((void*)0));
   if (!ret)
    ret = reconfigure_super(fc);
   put_fs_context(fc);
  }
 }
 up_write(&sb->s_umount);
 return ret;
}
