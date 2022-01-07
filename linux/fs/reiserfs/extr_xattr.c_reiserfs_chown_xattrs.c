
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct iattr {int dummy; } ;


 int chown_one_xattr ;
 int reiserfs_for_each_xattr (struct inode*,int ,struct iattr*) ;
 int reiserfs_warning (int ,char*,char*,int) ;

int reiserfs_chown_xattrs(struct inode *inode, struct iattr *attrs)
{
 int err = reiserfs_for_each_xattr(inode, chown_one_xattr, attrs);

 if (err)
  reiserfs_warning(inode->i_sb, "jdm-20007",
     "Couldn't chown all xattrs (%d)\n", err);
 return err;
}
