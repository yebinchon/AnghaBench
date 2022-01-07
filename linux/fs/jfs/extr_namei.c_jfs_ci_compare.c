
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {unsigned int len; char const* name; } ;
struct dentry {int dummy; } ;


 scalar_t__ tolower (char const) ;

__attribute__((used)) static int jfs_ci_compare(const struct dentry *dentry,
  unsigned int len, const char *str, const struct qstr *name)
{
 int i, result = 1;

 if (len != name->len)
  goto out;
 for (i=0; i < len; i++) {
  if (tolower(str[i]) != tolower(name->name[i]))
   goto out;
 }
 result = 0;
out:
 return result;
}
