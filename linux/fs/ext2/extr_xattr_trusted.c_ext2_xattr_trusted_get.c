
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xattr_handler {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int EXT2_XATTR_INDEX_TRUSTED ;
 int ext2_xattr_get (struct inode*,int ,char const*,void*,size_t) ;

__attribute__((used)) static int
ext2_xattr_trusted_get(const struct xattr_handler *handler,
         struct dentry *unused, struct inode *inode,
         const char *name, void *buffer, size_t size)
{
 return ext2_xattr_get(inode, EXT2_XATTR_INDEX_TRUSTED, name,
         buffer, size);
}
