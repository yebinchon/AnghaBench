
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xattr_handler {int flags; } ;
struct inode {int i_sb; } ;
struct f2fs_sb_info {int dummy; } ;
struct dentry {int dummy; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 struct f2fs_sb_info* F2FS_SB (int ) ;



 int XATTR_USER ;
 int f2fs_setxattr (struct inode*,int,char const*,void const*,size_t,int *,int) ;
 int test_opt (struct f2fs_sb_info*,int ) ;

__attribute__((used)) static int f2fs_xattr_generic_set(const struct xattr_handler *handler,
  struct dentry *unused, struct inode *inode,
  const char *name, const void *value,
  size_t size, int flags)
{
 struct f2fs_sb_info *sbi = F2FS_SB(inode->i_sb);

 switch (handler->flags) {
 case 128:
  if (!test_opt(sbi, XATTR_USER))
   return -EOPNOTSUPP;
  break;
 case 129:
 case 130:
  break;
 default:
  return -EINVAL;
 }
 return f2fs_setxattr(inode, handler->flags, name,
     value, size, ((void*)0), flags);
}
