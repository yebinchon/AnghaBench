
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sctp_sock {int hmac; } ;


 int crypto_free_shash (int ) ;
 int inet_sock_destruct (struct sock*) ;
 struct sctp_sock* sctp_sk (struct sock*) ;

__attribute__((used)) static void sctp_destruct_sock(struct sock *sk)
{
 struct sctp_sock *sp = sctp_sk(sk);


 crypto_free_shash(sp->hmac);

 inet_sock_destruct(sk);
}
