
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int EIO ;
 int ovl_set_opaque_xerr (struct dentry*,struct dentry*,int ) ;

__attribute__((used)) static int ovl_set_opaque(struct dentry *dentry, struct dentry *upperdentry)
{





 return ovl_set_opaque_xerr(dentry, upperdentry, -EIO);
}
