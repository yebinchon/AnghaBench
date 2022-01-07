
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ovl_entry {int numlower; } ;
struct dentry {struct ovl_entry* d_fsdata; } ;


 int d_inode (struct dentry*) ;
 int d_is_reg (struct dentry*) ;
 scalar_t__ ovl_dentry_upper (struct dentry*) ;
 int ovl_has_upperdata (int ) ;

bool ovl_is_metacopy_dentry(struct dentry *dentry)
{
 struct ovl_entry *oe = dentry->d_fsdata;

 if (!d_is_reg(dentry))
  return 0;

 if (ovl_dentry_upper(dentry)) {
  if (!ovl_has_upperdata(d_inode(dentry)))
   return 1;
  return 0;
 }

 return (oe->numlower > 1);
}
