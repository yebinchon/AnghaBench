
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int OVL_WHITEOUTS ;
 int d_inode (struct dentry*) ;
 int ovl_dentry_lower (struct dentry*) ;
 int ovl_test_flag (int ,int ) ;

__attribute__((used)) static bool ovl_pure_upper(struct dentry *dentry)
{
 return !ovl_dentry_lower(dentry) &&
        !ovl_test_flag(OVL_WHITEOUTS, d_inode(dentry));
}
