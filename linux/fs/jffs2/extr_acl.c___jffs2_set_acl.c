
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct inode {int dummy; } ;


 int ENODATA ;
 scalar_t__ IS_ERR (char*) ;
 int PTR_ERR (char*) ;
 int do_jffs2_setxattr (struct inode*,int,char*,char*,size_t,int ) ;
 char* jffs2_acl_to_medium (struct posix_acl*,size_t*) ;
 int kfree (char*) ;

__attribute__((used)) static int __jffs2_set_acl(struct inode *inode, int xprefix, struct posix_acl *acl)
{
 char *value = ((void*)0);
 size_t size = 0;
 int rc;

 if (acl) {
  value = jffs2_acl_to_medium(acl, &size);
  if (IS_ERR(value))
   return PTR_ERR(value);
 }
 rc = do_jffs2_setxattr(inode, xprefix, "", value, size, 0);
 if (!value && rc == -ENODATA)
  rc = 0;
 kfree(value);

 return rc;
}
