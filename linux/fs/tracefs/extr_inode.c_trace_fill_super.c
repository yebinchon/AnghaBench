
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_descr {char* member_0; } ;
struct tracefs_fs_info {int mount_opts; } ;
struct super_block {struct tracefs_fs_info* s_fs_info; int * s_op; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int TRACEFS_MAGIC ;
 int kfree (struct tracefs_fs_info*) ;
 struct tracefs_fs_info* kzalloc (int,int ) ;
 int simple_fill_super (struct super_block*,int ,struct tree_descr const*) ;
 int tracefs_apply_options (struct super_block*) ;
 int tracefs_parse_options (void*,int *) ;
 int tracefs_super_operations ;

__attribute__((used)) static int trace_fill_super(struct super_block *sb, void *data, int silent)
{
 static const struct tree_descr trace_files[] = {{""}};
 struct tracefs_fs_info *fsi;
 int err;

 fsi = kzalloc(sizeof(struct tracefs_fs_info), GFP_KERNEL);
 sb->s_fs_info = fsi;
 if (!fsi) {
  err = -ENOMEM;
  goto fail;
 }

 err = tracefs_parse_options(data, &fsi->mount_opts);
 if (err)
  goto fail;

 err = simple_fill_super(sb, TRACEFS_MAGIC, trace_files);
 if (err)
  goto fail;

 sb->s_op = &tracefs_super_operations;

 tracefs_apply_options(sb);

 return 0;

fail:
 kfree(fsi);
 sb->s_fs_info = ((void*)0);
 return err;
}
