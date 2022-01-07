
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xattr_handler {int dummy; } ;
struct inode {int i_ino; } ;
struct dentry {int dummy; } ;


 int dbg_gen (char*,char const*,int ,struct dentry*,size_t) ;
 int ubifs_xattr_get (struct inode*,char const*,void*,size_t) ;
 char* xattr_full_name (struct xattr_handler const*,char const*) ;

__attribute__((used)) static int xattr_get(const struct xattr_handler *handler,
      struct dentry *dentry, struct inode *inode,
      const char *name, void *buffer, size_t size)
{
 dbg_gen("xattr '%s', ino %lu ('%pd'), buf size %zd", name,
  inode->i_ino, dentry, size);

 name = xattr_full_name(handler, name);
 return ubifs_xattr_get(inode, name, buffer, size);
}
