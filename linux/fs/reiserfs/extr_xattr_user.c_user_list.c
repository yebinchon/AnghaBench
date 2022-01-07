
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_sb; } ;


 int reiserfs_xattrs_user (int ) ;

__attribute__((used)) static bool user_list(struct dentry *dentry)
{
 return reiserfs_xattrs_user(dentry->d_sb);
}
