
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int dummy; } ;
struct fs_context {int dummy; } ;
struct file_system_type {int fs_flags; } ;


 int EINVAL ;
 int ENODEV ;
 int EPERM ;
 int FS_HAS_SUBTYPE ;
 scalar_t__ IS_ERR (struct fs_context*) ;
 int PTR_ERR (struct fs_context*) ;
 int do_new_mount_fc (struct fs_context*,struct path*,int) ;
 struct fs_context* fs_context_for_mount (struct file_system_type*,int) ;
 struct file_system_type* get_fs_type (char const*) ;
 int mount_capable (struct fs_context*) ;
 int parse_monolithic_mount_data (struct fs_context*,void*) ;
 int put_filesystem (struct file_system_type*) ;
 int put_fs_context (struct fs_context*) ;
 char* strchr (char const*,char) ;
 int strlen (char const*) ;
 int vfs_get_tree (struct fs_context*) ;
 int vfs_parse_fs_string (struct fs_context*,char*,char const*,int ) ;

__attribute__((used)) static int do_new_mount(struct path *path, const char *fstype, int sb_flags,
   int mnt_flags, const char *name, void *data)
{
 struct file_system_type *type;
 struct fs_context *fc;
 const char *subtype = ((void*)0);
 int err = 0;

 if (!fstype)
  return -EINVAL;

 type = get_fs_type(fstype);
 if (!type)
  return -ENODEV;

 if (type->fs_flags & FS_HAS_SUBTYPE) {
  subtype = strchr(fstype, '.');
  if (subtype) {
   subtype++;
   if (!*subtype) {
    put_filesystem(type);
    return -EINVAL;
   }
  }
 }

 fc = fs_context_for_mount(type, sb_flags);
 put_filesystem(type);
 if (IS_ERR(fc))
  return PTR_ERR(fc);

 if (subtype)
  err = vfs_parse_fs_string(fc, "subtype",
       subtype, strlen(subtype));
 if (!err && name)
  err = vfs_parse_fs_string(fc, "source", name, strlen(name));
 if (!err)
  err = parse_monolithic_mount_data(fc, data);
 if (!err && !mount_capable(fc))
  err = -EPERM;
 if (!err)
  err = vfs_get_tree(fc);
 if (!err)
  err = do_new_mount_fc(fc, path, mnt_flags);

 put_fs_context(fc);
 return err;
}
