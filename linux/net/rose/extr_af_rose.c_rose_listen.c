
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {scalar_t__ sk_state; int sk_max_ack_backlog; } ;
struct rose_sock {int * dest_digis; int dest_call; int dest_addr; scalar_t__ dest_ndigis; } ;


 int AX25_ADDR_LEN ;
 int EOPNOTSUPP ;
 int ROSE_ADDR_LEN ;
 int ROSE_MAX_DIGIS ;
 scalar_t__ TCP_LISTEN ;
 int memset (int *,int ,int) ;
 struct rose_sock* rose_sk (struct sock*) ;

__attribute__((used)) static int rose_listen(struct socket *sock, int backlog)
{
 struct sock *sk = sock->sk;

 if (sk->sk_state != TCP_LISTEN) {
  struct rose_sock *rose = rose_sk(sk);

  rose->dest_ndigis = 0;
  memset(&rose->dest_addr, 0, ROSE_ADDR_LEN);
  memset(&rose->dest_call, 0, AX25_ADDR_LEN);
  memset(rose->dest_digis, 0, AX25_ADDR_LEN * ROSE_MAX_DIGIS);
  sk->sk_max_ack_backlog = backlog;
  sk->sk_state = TCP_LISTEN;
  return 0;
 }

 return -EOPNOTSUPP;
}
