
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int UBIFS_XATTR_NAME_ENCRYPTION_CONTEXT ;
 int ubifs_xattr_set (struct inode*,int ,void const*,size_t,int ,int) ;

__attribute__((used)) static int ubifs_crypt_set_context(struct inode *inode, const void *ctx,
       size_t len, void *fs_data)
{





 return ubifs_xattr_set(inode, UBIFS_XATTR_NAME_ENCRYPTION_CONTEXT,
          ctx, len, 0, 0);
}
