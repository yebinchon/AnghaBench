
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracefs_fs_info {int mount_opts; } ;
struct super_block {struct tracefs_fs_info* s_fs_info; } ;


 int sync_filesystem (struct super_block*) ;
 int tracefs_apply_options (struct super_block*) ;
 int tracefs_parse_options (char*,int *) ;

__attribute__((used)) static int tracefs_remount(struct super_block *sb, int *flags, char *data)
{
 int err;
 struct tracefs_fs_info *fsi = sb->s_fs_info;

 sync_filesystem(sb);
 err = tracefs_parse_options(data, &fsi->mount_opts);
 if (err)
  goto fail;

 tracefs_apply_options(sb);

fail:
 return err;
}
