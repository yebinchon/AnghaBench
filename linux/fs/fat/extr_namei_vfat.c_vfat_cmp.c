
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int name; } ;
struct dentry {int dummy; } ;


 unsigned int __vfat_striptail_len (unsigned int,char const*) ;
 scalar_t__ strncmp (int ,char const*,unsigned int) ;
 unsigned int vfat_striptail_len (struct qstr const*) ;

__attribute__((used)) static int vfat_cmp(const struct dentry *dentry,
  unsigned int len, const char *str, const struct qstr *name)
{
 unsigned int alen, blen;


 alen = vfat_striptail_len(name);
 blen = __vfat_striptail_len(len, str);
 if (alen == blen) {
  if (strncmp(name->name, str, alen) == 0)
   return 0;
 }
 return 1;
}
