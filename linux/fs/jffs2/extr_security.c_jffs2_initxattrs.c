
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xattr {int value_len; int value; int * name; } ;
struct inode {int dummy; } ;


 int JFFS2_XPREFIX_SECURITY ;
 int do_jffs2_setxattr (struct inode*,int ,int *,int ,int ,int ) ;

__attribute__((used)) static int jffs2_initxattrs(struct inode *inode,
       const struct xattr *xattr_array, void *fs_info)
{
 const struct xattr *xattr;
 int err = 0;

 for (xattr = xattr_array; xattr->name != ((void*)0); xattr++) {
  err = do_jffs2_setxattr(inode, JFFS2_XPREFIX_SECURITY,
     xattr->name, xattr->value,
     xattr->value_len, 0);
  if (err < 0)
   break;
 }
 return err;
}
