
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {TYPE_1__* sk; } ;
struct iattr {int ia_valid; int ia_uid; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int sk_uid; } ;


 int ATTR_UID ;
 int ENOENT ;
 struct socket* SOCKET_I (int ) ;
 int d_inode (struct dentry*) ;
 int simple_setattr (struct dentry*,struct iattr*) ;

__attribute__((used)) static int sockfs_setattr(struct dentry *dentry, struct iattr *iattr)
{
 int err = simple_setattr(dentry, iattr);

 if (!err && (iattr->ia_valid & ATTR_UID)) {
  struct socket *sock = SOCKET_I(d_inode(dentry));

  if (sock->sk)
   sock->sk->sk_uid = iattr->ia_uid;
  else
   err = -ENOENT;
 }

 return err;
}
