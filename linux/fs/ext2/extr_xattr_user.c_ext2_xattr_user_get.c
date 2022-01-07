
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
 int ext2_xattr_get (struct inode*,int ,char const*,void*,size_t) ;
 int test_opt (int ,int ) ;

__attribute__((used)) static int
ext2_xattr_user_get(const struct xattr_handler *handler,
      struct dentry *unused, struct inode *inode,
      const char *name, void *buffer, size_t size)
{
 if (!test_opt(inode->i_sb, XATTR_USER))
  return -EOPNOTSUPP;
 return ext2_xattr_get(inode, EXT2_XATTR_INDEX_USER,
         name, buffer, size);
}
