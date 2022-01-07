
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xattr {int value_len; int value; int * name; } ;
struct inode {int dummy; } ;


 int GFS2_EATYPE_SECURITY ;
 int __gfs2_xattr_set (struct inode*,int *,int ,int ,int ,int ) ;

__attribute__((used)) static int gfs2_initxattrs(struct inode *inode, const struct xattr *xattr_array,
      void *fs_info)
{
 const struct xattr *xattr;
 int err = 0;

 for (xattr = xattr_array; xattr->name != ((void*)0); xattr++) {
  err = __gfs2_xattr_set(inode, xattr->name, xattr->value,
           xattr->value_len, 0,
           GFS2_EATYPE_SECURITY);
  if (err < 0)
   break;
 }
 return err;
}
