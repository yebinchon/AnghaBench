
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {unsigned int len; int name; } ;
struct dentry {int d_sb; } ;


 int hpfs_adjust_length (char const*,unsigned int*) ;
 scalar_t__ hpfs_chk_name (int ,unsigned int*) ;
 scalar_t__ hpfs_compare_names (int ,char const*,unsigned int,int ,unsigned int,int ) ;

__attribute__((used)) static int hpfs_compare_dentry(const struct dentry *dentry,
  unsigned int len, const char *str, const struct qstr *name)
{
 unsigned al = len;
 unsigned bl = name->len;

 hpfs_adjust_length(str, &al);







 if (hpfs_chk_name(name->name, &bl))
  return 1;
 if (hpfs_compare_names(dentry->d_sb, str, al, name->name, bl, 0))
  return 1;
 return 0;
}
