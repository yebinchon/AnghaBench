
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xattr_handler {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int OCFS2_XATTR_INDEX_SECURITY ;
 int ocfs2_xattr_set (struct inode*,int ,char const*,void const*,size_t,int) ;

__attribute__((used)) static int ocfs2_xattr_security_set(const struct xattr_handler *handler,
        struct dentry *unused, struct inode *inode,
        const char *name, const void *value,
        size_t size, int flags)
{
 return ocfs2_xattr_set(inode, OCFS2_XATTR_INDEX_SECURITY,
          name, value, size, flags);
}
