
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int a_count; } ;
struct inode {int dummy; } ;
struct fuse_conn {int user_ns; scalar_t__ no_setxattr; int posix_acl; } ;


 int ACL_TYPE_ACCESS ;
 int ACL_TYPE_DEFAULT ;
 int E2BIG ;
 int EINVAL ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 size_t PAGE_SIZE ;
 char* XATTR_NAME_POSIX_ACL_ACCESS ;
 char* XATTR_NAME_POSIX_ACL_DEFAULT ;
 int forget_all_cached_acls (struct inode*) ;
 int fuse_invalidate_attr (struct inode*) ;
 int fuse_removexattr (struct inode*,char const*) ;
 int fuse_setxattr (struct inode*,char const*,void*,size_t,int ) ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;
 int kfree (void*) ;
 void* kmalloc (size_t,int ) ;
 int posix_acl_to_xattr (int ,struct posix_acl*,void*,size_t) ;
 size_t posix_acl_xattr_size (int ) ;

int fuse_set_acl(struct inode *inode, struct posix_acl *acl, int type)
{
 struct fuse_conn *fc = get_fuse_conn(inode);
 const char *name;
 int ret;

 if (!fc->posix_acl || fc->no_setxattr)
  return -EOPNOTSUPP;

 if (type == ACL_TYPE_ACCESS)
  name = XATTR_NAME_POSIX_ACL_ACCESS;
 else if (type == ACL_TYPE_DEFAULT)
  name = XATTR_NAME_POSIX_ACL_DEFAULT;
 else
  return -EINVAL;

 if (acl) {







  size_t size = posix_acl_xattr_size(acl->a_count);
  void *value;

  if (size > PAGE_SIZE)
   return -E2BIG;

  value = kmalloc(size, GFP_KERNEL);
  if (!value)
   return -ENOMEM;

  ret = posix_acl_to_xattr(fc->user_ns, acl, value, size);
  if (ret < 0) {
   kfree(value);
   return ret;
  }

  ret = fuse_setxattr(inode, name, value, size, 0);
  kfree(value);
 } else {
  ret = fuse_removexattr(inode, name);
 }
 forget_all_cached_acls(inode);
 fuse_invalidate_attr(inode);

 return ret;
}
