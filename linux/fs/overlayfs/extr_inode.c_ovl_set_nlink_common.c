
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_nlink; } ;
struct dentry {int dummy; } ;
typedef int buf ;


 int EIO ;
 int OVL_XATTR_NLINK ;
 scalar_t__ WARN_ON (int) ;
 struct inode* d_inode (struct dentry*) ;
 int ovl_dentry_upper (struct dentry*) ;
 int ovl_do_setxattr (int ,int ,char*,int,int ) ;
 int snprintf (char*,int,char const*,int) ;

__attribute__((used)) static int ovl_set_nlink_common(struct dentry *dentry,
    struct dentry *realdentry, const char *format)
{
 struct inode *inode = d_inode(dentry);
 struct inode *realinode = d_inode(realdentry);
 char buf[13];
 int len;

 len = snprintf(buf, sizeof(buf), format,
         (int) (inode->i_nlink - realinode->i_nlink));

 if (WARN_ON(len >= sizeof(buf)))
  return -EIO;

 return ovl_do_setxattr(ovl_dentry_upper(dentry),
          OVL_XATTR_NLINK, buf, len, 0);
}
