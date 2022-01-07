
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct inode {int dummy; } ;
struct fuse_conn {scalar_t__ no_getxattr; int user_ns; int posix_acl; } ;


 int ACL_TYPE_ACCESS ;
 int ACL_TYPE_DEFAULT ;
 int E2BIG ;
 int ENODATA ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int ERANGE ;
 struct posix_acl* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 char* XATTR_NAME_POSIX_ACL_ACCESS ;
 char* XATTR_NAME_POSIX_ACL_DEFAULT ;
 int fuse_getxattr (struct inode*,char const*,void*,int ) ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;
 int kfree (void*) ;
 void* kmalloc (int ,int ) ;
 struct posix_acl* posix_acl_from_xattr (int ,void*,int) ;

struct posix_acl *fuse_get_acl(struct inode *inode, int type)
{
 struct fuse_conn *fc = get_fuse_conn(inode);
 int size;
 const char *name;
 void *value = ((void*)0);
 struct posix_acl *acl;

 if (!fc->posix_acl || fc->no_getxattr)
  return ((void*)0);

 if (type == ACL_TYPE_ACCESS)
  name = XATTR_NAME_POSIX_ACL_ACCESS;
 else if (type == ACL_TYPE_DEFAULT)
  name = XATTR_NAME_POSIX_ACL_DEFAULT;
 else
  return ERR_PTR(-EOPNOTSUPP);

 value = kmalloc(PAGE_SIZE, GFP_KERNEL);
 if (!value)
  return ERR_PTR(-ENOMEM);
 size = fuse_getxattr(inode, name, value, PAGE_SIZE);
 if (size > 0)
  acl = posix_acl_from_xattr(fc->user_ns, value, size);
 else if ((size == 0) || (size == -ENODATA) ||
   (size == -EOPNOTSUPP && fc->no_getxattr))
  acl = ((void*)0);
 else if (size == -ERANGE)
  acl = ERR_PTR(-E2BIG);
 else
  acl = ERR_PTR(size);

 kfree(value);
 return acl;
}
