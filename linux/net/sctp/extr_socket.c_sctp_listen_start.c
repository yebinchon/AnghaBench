
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sock {int sk_max_ack_backlog; } ;
struct sctp_sock {char* sctp_hmac_alg; struct crypto_shash* hmac; struct sctp_endpoint* ep; } ;
struct TYPE_4__ {int port; } ;
struct TYPE_5__ {TYPE_1__ bind_addr; } ;
struct sctp_endpoint {TYPE_2__ base; } ;
struct crypto_shash {int dummy; } ;
struct TYPE_6__ {int inet_num; } ;


 int EADDRINUSE ;
 int EAGAIN ;
 int ENOSYS ;
 scalar_t__ IS_ERR (struct crypto_shash*) ;
 int PTR_ERR (struct crypto_shash*) ;
 int SCTP_SS_CLOSED ;
 int SCTP_SS_LISTENING ;
 struct crypto_shash* crypto_alloc_shash (char*,int ,int ) ;
 TYPE_3__* inet_sk (struct sock*) ;
 int inet_sk_set_state (struct sock*,int ) ;
 int net_info_ratelimited (char*,char*,int ) ;
 scalar_t__ sctp_autobind (struct sock*) ;
 scalar_t__ sctp_get_port (struct sock*,int ) ;
 int sctp_hash_endpoint (struct sctp_endpoint*) ;
 struct sctp_sock* sctp_sk (struct sock*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static int sctp_listen_start(struct sock *sk, int backlog)
{
 struct sctp_sock *sp = sctp_sk(sk);
 struct sctp_endpoint *ep = sp->ep;
 struct crypto_shash *tfm = ((void*)0);
 char alg[32];


 if (!sp->hmac && sp->sctp_hmac_alg) {
  sprintf(alg, "hmac(%s)", sp->sctp_hmac_alg);
  tfm = crypto_alloc_shash(alg, 0, 0);
  if (IS_ERR(tfm)) {
   net_info_ratelimited("failed to load transform for %s: %ld\n",
          sp->sctp_hmac_alg, PTR_ERR(tfm));
   return -ENOSYS;
  }
  sctp_sk(sk)->hmac = tfm;
 }
 inet_sk_set_state(sk, SCTP_SS_LISTENING);
 if (!ep->base.bind_addr.port) {
  if (sctp_autobind(sk))
   return -EAGAIN;
 } else {
  if (sctp_get_port(sk, inet_sk(sk)->inet_num)) {
   inet_sk_set_state(sk, SCTP_SS_CLOSED);
   return -EADDRINUSE;
  }
 }

 sk->sk_max_ack_backlog = backlog;
 return sctp_hash_endpoint(ep);
}
