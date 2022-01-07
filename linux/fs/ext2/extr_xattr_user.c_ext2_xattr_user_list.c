
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_sb; } ;


 int XATTR_USER ;
 int test_opt (int ,int ) ;

__attribute__((used)) static bool
ext2_xattr_user_list(struct dentry *dentry)
{
 return test_opt(dentry->d_sb, XATTR_USER);
}
