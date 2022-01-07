
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {unsigned int len; unsigned char* name; } ;
struct dentry {int dummy; } ;


 unsigned int HFS_NAMELEN ;
 scalar_t__* caseorder ;

int hfs_compare_dentry(const struct dentry *dentry,
  unsigned int len, const char *str, const struct qstr *name)
{
 const unsigned char *n1, *n2;

 if (len >= HFS_NAMELEN) {
  if (name->len < HFS_NAMELEN)
   return 1;
  len = HFS_NAMELEN;
 } else if (len != name->len)
  return 1;

 n1 = str;
 n2 = name->name;
 while (len--) {
  if (caseorder[*n1++] != caseorder[*n2++])
   return 1;
 }
 return 0;
}
