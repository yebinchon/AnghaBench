
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sockaddr {int dummy; } ;
struct sock {scalar_t__ sk_state; } ;
struct rose_sock {int dest_ndigis; int source_ndigis; int * source_digis; int source_call; int source_addr; int * dest_digis; int dest_call; int dest_addr; } ;
struct full_sockaddr_rose {int srose_ndigis; int * srose_digis; int srose_call; int srose_addr; void* srose_family; } ;


 void* AF_ROSE ;
 int ENOTCONN ;
 scalar_t__ TCP_ESTABLISHED ;
 int memset (struct full_sockaddr_rose*,int ,int) ;
 struct rose_sock* rose_sk (struct sock*) ;

__attribute__((used)) static int rose_getname(struct socket *sock, struct sockaddr *uaddr,
 int peer)
{
 struct full_sockaddr_rose *srose = (struct full_sockaddr_rose *)uaddr;
 struct sock *sk = sock->sk;
 struct rose_sock *rose = rose_sk(sk);
 int n;

 memset(srose, 0, sizeof(*srose));
 if (peer != 0) {
  if (sk->sk_state != TCP_ESTABLISHED)
   return -ENOTCONN;
  srose->srose_family = AF_ROSE;
  srose->srose_addr = rose->dest_addr;
  srose->srose_call = rose->dest_call;
  srose->srose_ndigis = rose->dest_ndigis;
  for (n = 0; n < rose->dest_ndigis; n++)
   srose->srose_digis[n] = rose->dest_digis[n];
 } else {
  srose->srose_family = AF_ROSE;
  srose->srose_addr = rose->source_addr;
  srose->srose_call = rose->source_call;
  srose->srose_ndigis = rose->source_ndigis;
  for (n = 0; n < rose->source_ndigis; n++)
   srose->srose_digis[n] = rose->source_digis[n];
 }

 return sizeof(struct full_sockaddr_rose);
}
