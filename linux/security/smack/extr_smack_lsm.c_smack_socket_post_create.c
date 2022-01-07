
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket_smack {int * smk_out; int * smk_in; } ;
struct socket {TYPE_1__* sk; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {struct socket_smack* sk_security; } ;


 int PF_INET ;
 int PF_KTHREAD ;
 int SMACK_CIPSO_SOCKET ;
 TYPE_2__* current ;
 int smack_known_web ;
 int smack_netlabel (TYPE_1__*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int smack_socket_post_create(struct socket *sock, int family,
        int type, int protocol, int kern)
{
 struct socket_smack *ssp;

 if (sock->sk == ((void*)0))
  return 0;




 if (unlikely(current->flags & PF_KTHREAD)) {
  ssp = sock->sk->sk_security;
  ssp->smk_in = &smack_known_web;
  ssp->smk_out = &smack_known_web;
 }

 if (family != PF_INET)
  return 0;



 return smack_netlabel(sock->sk, SMACK_CIPSO_SOCKET);
}
