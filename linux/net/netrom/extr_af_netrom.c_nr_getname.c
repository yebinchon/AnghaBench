
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sockaddr_ax25 {int dummy; } ;
struct sockaddr {int dummy; } ;
struct sock {scalar_t__ sk_state; } ;
struct TYPE_2__ {int sax25_ndigis; int sax25_call; void* sax25_family; } ;
struct nr_sock {int source_addr; TYPE_1__ dest_addr; int user_addr; } ;
struct full_sockaddr_ax25 {TYPE_1__ fsa_ax25; TYPE_1__* fsa_digipeater; } ;


 void* AF_NETROM ;
 int ENOTCONN ;
 scalar_t__ TCP_ESTABLISHED ;
 int lock_sock (struct sock*) ;
 int memset (TYPE_1__*,int ,int) ;
 struct nr_sock* nr_sk (struct sock*) ;
 int release_sock (struct sock*) ;

__attribute__((used)) static int nr_getname(struct socket *sock, struct sockaddr *uaddr,
 int peer)
{
 struct full_sockaddr_ax25 *sax = (struct full_sockaddr_ax25 *)uaddr;
 struct sock *sk = sock->sk;
 struct nr_sock *nr = nr_sk(sk);
 int uaddr_len;

 memset(&sax->fsa_ax25, 0, sizeof(struct sockaddr_ax25));

 lock_sock(sk);
 if (peer != 0) {
  if (sk->sk_state != TCP_ESTABLISHED) {
   release_sock(sk);
   return -ENOTCONN;
  }
  sax->fsa_ax25.sax25_family = AF_NETROM;
  sax->fsa_ax25.sax25_ndigis = 1;
  sax->fsa_ax25.sax25_call = nr->user_addr;
  memset(sax->fsa_digipeater, 0, sizeof(sax->fsa_digipeater));
  sax->fsa_digipeater[0] = nr->dest_addr;
  uaddr_len = sizeof(struct full_sockaddr_ax25);
 } else {
  sax->fsa_ax25.sax25_family = AF_NETROM;
  sax->fsa_ax25.sax25_ndigis = 0;
  sax->fsa_ax25.sax25_call = nr->source_addr;
  uaddr_len = sizeof(struct sockaddr_ax25);
 }
 release_sock(sk);

 return uaddr_len;
}
