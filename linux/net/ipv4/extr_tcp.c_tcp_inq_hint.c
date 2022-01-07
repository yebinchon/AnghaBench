
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tcp_sock {int copied_seq; int rcv_nxt; } ;
struct sock {int dummy; } ;


 scalar_t__ READ_ONCE (int) ;
 int SOCK_DONE ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 scalar_t__ sock_flag (struct sock*,int ) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int tcp_inq_hint(struct sock *sk)
{
 const struct tcp_sock *tp = tcp_sk(sk);
 u32 copied_seq = READ_ONCE(tp->copied_seq);
 u32 rcv_nxt = READ_ONCE(tp->rcv_nxt);
 int inq;

 inq = rcv_nxt - copied_seq;
 if (unlikely(inq < 0 || copied_seq != READ_ONCE(tp->copied_seq))) {
  lock_sock(sk);
  inq = tp->rcv_nxt - tp->copied_seq;
  release_sock(sk);
 }



 if (inq == 0 && sock_flag(sk, SOCK_DONE))
  inq = 1;
 return inq;
}
