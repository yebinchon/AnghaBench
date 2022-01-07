
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int dummy; } ;
struct dentry {int dummy; } ;


 int isofs_dentry_cmp_common (unsigned int,char const*,struct qstr const*,int ,int) ;

__attribute__((used)) static int
isofs_dentry_cmpi(const struct dentry *dentry,
  unsigned int len, const char *str, const struct qstr *name)
{
 return isofs_dentry_cmp_common(len, str, name, 0, 1);
}
