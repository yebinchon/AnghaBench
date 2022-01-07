
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xattr_handler {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int JFFS2_XPREFIX_USER ;
 int do_jffs2_setxattr (struct inode*,int ,char const*,void const*,size_t,int) ;

__attribute__((used)) static int jffs2_user_setxattr(const struct xattr_handler *handler,
          struct dentry *unused, struct inode *inode,
          const char *name, const void *buffer,
          size_t size, int flags)
{
 return do_jffs2_setxattr(inode, JFFS2_XPREFIX_USER,
     name, buffer, size, flags);
}
