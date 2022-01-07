
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xattr_handler {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int JFFS2_XPREFIX_TRUSTED ;
 int do_jffs2_getxattr (struct inode*,int ,char const*,void*,size_t) ;

__attribute__((used)) static int jffs2_trusted_getxattr(const struct xattr_handler *handler,
      struct dentry *unused, struct inode *inode,
      const char *name, void *buffer, size_t size)
{
 return do_jffs2_getxattr(inode, JFFS2_XPREFIX_TRUSTED,
     name, buffer, size);
}
