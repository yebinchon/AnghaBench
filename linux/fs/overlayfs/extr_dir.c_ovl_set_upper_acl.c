
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int a_count; } ;
struct dentry {int dummy; } ;


 int CONFIG_FS_POSIX_ACL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IS_ENABLED (int ) ;
 int XATTR_CREATE ;
 int init_user_ns ;
 int kfree (void*) ;
 void* kmalloc (size_t,int ) ;
 int posix_acl_to_xattr (int *,struct posix_acl const*,void*,size_t) ;
 size_t posix_acl_xattr_size (int ) ;
 int vfs_setxattr (struct dentry*,char const*,void*,size_t,int ) ;

__attribute__((used)) static int ovl_set_upper_acl(struct dentry *upperdentry, const char *name,
        const struct posix_acl *acl)
{
 void *buffer;
 size_t size;
 int err;

 if (!IS_ENABLED(CONFIG_FS_POSIX_ACL) || !acl)
  return 0;

 size = posix_acl_xattr_size(acl->a_count);
 buffer = kmalloc(size, GFP_KERNEL);
 if (!buffer)
  return -ENOMEM;

 err = posix_acl_to_xattr(&init_user_ns, acl, buffer, size);
 if (err < 0)
  goto out_free;

 err = vfs_setxattr(upperdentry, name, buffer, size, XATTR_CREATE);
out_free:
 kfree(buffer);
 return err;
}
