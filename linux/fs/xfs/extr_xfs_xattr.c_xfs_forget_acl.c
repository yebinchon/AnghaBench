
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int ACL_TYPE_ACCESS ;
 int ACL_TYPE_DEFAULT ;
 int ATTR_ROOT ;
 int SGI_ACL_DEFAULT ;
 int SGI_ACL_FILE ;
 int forget_cached_acl (struct inode*,int ) ;
 int strcmp (char const*,int ) ;

void
xfs_forget_acl(
 struct inode *inode,
 const char *name,
 int xflags)
{






 if (xflags & ATTR_ROOT) {






 }
}
