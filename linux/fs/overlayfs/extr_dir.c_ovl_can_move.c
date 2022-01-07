
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_sb; } ;


 int d_is_dir (struct dentry*) ;
 scalar_t__ ovl_redirect_dir (int ) ;
 int ovl_type_merge_or_lower (struct dentry*) ;

__attribute__((used)) static bool ovl_can_move(struct dentry *dentry)
{
 return ovl_redirect_dir(dentry->d_sb) ||
  !d_is_dir(dentry) || !ovl_type_merge_or_lower(dentry);
}
