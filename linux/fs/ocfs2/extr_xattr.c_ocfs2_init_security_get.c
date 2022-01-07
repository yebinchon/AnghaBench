
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int dummy; } ;
struct ocfs2_security_xattr_info {int value_len; int value; int name; } ;
struct inode {int i_sb; } ;


 int EOPNOTSUPP ;
 int OCFS2_SB (int ) ;
 int ocfs2_initxattrs ;
 int ocfs2_supports_xattr (int ) ;
 int security_inode_init_security (struct inode*,struct inode*,struct qstr const*,int *,int *) ;
 int security_old_inode_init_security (struct inode*,struct inode*,struct qstr const*,int *,int *,int *) ;

int ocfs2_init_security_get(struct inode *inode,
       struct inode *dir,
       const struct qstr *qstr,
       struct ocfs2_security_xattr_info *si)
{

 if (!ocfs2_supports_xattr(OCFS2_SB(dir->i_sb)))
  return -EOPNOTSUPP;
 if (si)
  return security_old_inode_init_security(inode, dir, qstr,
       &si->name, &si->value,
       &si->value_len);

 return security_inode_init_security(inode, dir, qstr,
         &ocfs2_initxattrs, ((void*)0));
}
