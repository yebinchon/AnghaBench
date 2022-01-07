
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct inode {int dummy; } ;
typedef size_t ssize_t ;


 int ERANGE ;
 scalar_t__ IS_ERR_OR_NULL (struct posix_acl*) ;
 struct posix_acl* get_acl (struct inode*,int) ;
 int posix_acl_release (struct posix_acl*) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int
nfs3_list_one_acl(struct inode *inode, int type, const char *name, void *data,
  size_t size, ssize_t *result)
{
 struct posix_acl *acl;
 char *p = data + *result;

 acl = get_acl(inode, type);
 if (IS_ERR_OR_NULL(acl))
  return 0;

 posix_acl_release(acl);

 *result += strlen(name);
 *result += 1;
 if (!size)
  return 0;
 if (*result > size)
  return -ERANGE;

 strcpy(p, name);
 return 0;
}
