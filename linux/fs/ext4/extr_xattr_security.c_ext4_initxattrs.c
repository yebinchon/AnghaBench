
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xattr {int value_len; int value; int * name; } ;
struct inode {int dummy; } ;
typedef int handle_t ;


 int EXT4_XATTR_INDEX_SECURITY ;
 int XATTR_CREATE ;
 int ext4_xattr_set_handle (int *,struct inode*,int ,int *,int ,int ,int ) ;

__attribute__((used)) static int
ext4_initxattrs(struct inode *inode, const struct xattr *xattr_array,
  void *fs_info)
{
 const struct xattr *xattr;
 handle_t *handle = fs_info;
 int err = 0;

 for (xattr = xattr_array; xattr->name != ((void*)0); xattr++) {
  err = ext4_xattr_set_handle(handle, inode,
         EXT4_XATTR_INDEX_SECURITY,
         xattr->name, xattr->value,
         xattr->value_len, XATTR_CREATE);
  if (err < 0)
   break;
 }
 return err;
}
