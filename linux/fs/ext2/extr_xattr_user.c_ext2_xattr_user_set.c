
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xattr_handler {int dummy; } ;
struct inode {int i_sb; } ;
struct dentry {int dummy; } ;


 int EOPNOTSUPP ;
 int EXT2_XATTR_INDEX_USER ;
 int XATTR_USER ;
 int ext2_xattr_set (struct inode*,int ,char const*,void const*,size_t,int) ;
 int test_opt (int ,int ) ;

__attribute__((used)) static int
ext2_xattr_user_set(const struct xattr_handler *handler,
      struct dentry *unused, struct inode *inode,
      const char *name, const void *value,
      size_t size, int flags)
{
 if (!test_opt(inode->i_sb, XATTR_USER))
  return -EOPNOTSUPP;

 return ext2_xattr_set(inode, EXT2_XATTR_INDEX_USER,
         name, value, size, flags);
}
