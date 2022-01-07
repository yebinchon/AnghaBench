
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct socket {int sk; } ;
struct sock {int sk_family; } ;
struct sctp_sock {TYPE_3__* pf; } ;
struct TYPE_6__ {int primary_addr; } ;
struct sctp_association {TYPE_2__ peer; } ;
typedef int sctp_assoc_t ;
struct TYPE_8__ {TYPE_1__* nsproxy; } ;
struct TYPE_7__ {int (* copy_ip_options ) (struct sock*,int ) ;int (* to_sk_daddr ) (int *,struct sock*) ;} ;
struct TYPE_5__ {int net_ns; } ;


 int EINVAL ;
 int IPPROTO_SCTP ;
 int SCTP_SOCKET_UDP_HIGH_BANDWIDTH ;
 int SOCK_SEQPACKET ;
 int UDP ;
 TYPE_4__* current ;
 int net_eq (int ,int ) ;
 int sctp_copy_sock (int ,struct sock*,struct sctp_association*) ;
 struct sctp_association* sctp_id2assoc (struct sock*,int ) ;
 struct sctp_sock* sctp_sk (struct sock*) ;
 int sctp_sock_migrate (struct sock*,int ,struct sctp_association*,int ) ;
 int sctp_style (struct sock*,int ) ;
 int sock_create (int ,int ,int ,struct socket**) ;
 int sock_net (struct sock*) ;
 int sock_release (struct socket*) ;
 int stub1 (int *,struct sock*) ;
 int stub2 (struct sock*,int ) ;

int sctp_do_peeloff(struct sock *sk, sctp_assoc_t id, struct socket **sockp)
{
 struct sctp_association *asoc = sctp_id2assoc(sk, id);
 struct sctp_sock *sp = sctp_sk(sk);
 struct socket *sock;
 int err = 0;


 if (!net_eq(current->nsproxy->net_ns, sock_net(sk)))
  return -EINVAL;

 if (!asoc)
  return -EINVAL;




 if (!sctp_style(sk, UDP))
  return -EINVAL;


 err = sock_create(sk->sk_family, SOCK_SEQPACKET, IPPROTO_SCTP, &sock);
 if (err < 0)
  return err;

 sctp_copy_sock(sock->sk, sk, asoc);





 sp->pf->to_sk_daddr(&asoc->peer.primary_addr, sk);
 sp->pf->copy_ip_options(sk, sock->sk);




 err = sctp_sock_migrate(sk, sock->sk, asoc,
    SCTP_SOCKET_UDP_HIGH_BANDWIDTH);
 if (err) {
  sock_release(sock);
  sock = ((void*)0);
 }

 *sockp = sock;

 return err;
}
