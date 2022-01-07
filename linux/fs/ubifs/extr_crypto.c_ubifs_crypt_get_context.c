
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int UBIFS_XATTR_NAME_ENCRYPTION_CONTEXT ;
 int ubifs_xattr_get (struct inode*,int ,void*,size_t) ;

__attribute__((used)) static int ubifs_crypt_get_context(struct inode *inode, void *ctx, size_t len)
{
 return ubifs_xattr_get(inode, UBIFS_XATTR_NAME_ENCRYPTION_CONTEXT,
          ctx, len);
}
