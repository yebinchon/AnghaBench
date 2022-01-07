
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
typedef void* u16 ;
struct task_security_struct {int dummy; } ;
struct socket {TYPE_1__* sk; } ;
struct sk_security_struct {scalar_t__ sclass; int sctp_assoc_state; void* sid; } ;
struct inode_security_struct {int initialized; void* sid; void* sclass; } ;
struct TYPE_2__ {struct sk_security_struct* sk_security; } ;


 int LABEL_INITIALIZED ;
 int SCTP_ASSOC_UNSET ;
 scalar_t__ SECCLASS_SCTP_SOCKET ;
 void* SECINITSID_KERNEL ;
 int SOCK_INODE (struct socket*) ;
 int current_cred () ;
 struct inode_security_struct* inode_security_novalidate (int ) ;
 struct task_security_struct* selinux_cred (int ) ;
 int selinux_netlbl_socket_post_create (TYPE_1__*,int) ;
 int socket_sockcreate_sid (struct task_security_struct const*,void*,void**) ;
 void* socket_type_to_security_class (int,int,int) ;

__attribute__((used)) static int selinux_socket_post_create(struct socket *sock, int family,
          int type, int protocol, int kern)
{
 const struct task_security_struct *tsec = selinux_cred(current_cred());
 struct inode_security_struct *isec = inode_security_novalidate(SOCK_INODE(sock));
 struct sk_security_struct *sksec;
 u16 sclass = socket_type_to_security_class(family, type, protocol);
 u32 sid = SECINITSID_KERNEL;
 int err = 0;

 if (!kern) {
  err = socket_sockcreate_sid(tsec, sclass, &sid);
  if (err)
   return err;
 }

 isec->sclass = sclass;
 isec->sid = sid;
 isec->initialized = LABEL_INITIALIZED;

 if (sock->sk) {
  sksec = sock->sk->sk_security;
  sksec->sclass = sclass;
  sksec->sid = sid;

  if (sksec->sclass == SECCLASS_SCTP_SOCKET)
   sksec->sctp_assoc_state = SCTP_ASSOC_UNSET;

  err = selinux_netlbl_socket_post_create(sock->sk, family);
 }

 return err;
}
