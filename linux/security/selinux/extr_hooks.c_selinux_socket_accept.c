
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct socket {int sk; } ;
struct inode_security_struct {int initialized; int sid; int sclass; int lock; } ;


 int LABEL_INITIALIZED ;
 int SOCKET__ACCEPT ;
 int SOCK_INODE (struct socket*) ;
 struct inode_security_struct* inode_security_novalidate (int ) ;
 int sock_has_perm (int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int selinux_socket_accept(struct socket *sock, struct socket *newsock)
{
 int err;
 struct inode_security_struct *isec;
 struct inode_security_struct *newisec;
 u16 sclass;
 u32 sid;

 err = sock_has_perm(sock->sk, SOCKET__ACCEPT);
 if (err)
  return err;

 isec = inode_security_novalidate(SOCK_INODE(sock));
 spin_lock(&isec->lock);
 sclass = isec->sclass;
 sid = isec->sid;
 spin_unlock(&isec->lock);

 newisec = inode_security_novalidate(SOCK_INODE(newsock));
 newisec->sclass = sclass;
 newisec->sid = sid;
 newisec->initialized = LABEL_INITIALIZED;

 return 0;
}
