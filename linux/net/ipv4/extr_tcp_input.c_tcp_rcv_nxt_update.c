
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tcp_sock {scalar_t__ rcv_nxt; int bytes_received; } ;
struct sock {int dummy; } ;


 int WRITE_ONCE (scalar_t__,scalar_t__) ;
 int sock_owned_by_me (struct sock*) ;

__attribute__((used)) static void tcp_rcv_nxt_update(struct tcp_sock *tp, u32 seq)
{
 u32 delta = seq - tp->rcv_nxt;

 sock_owned_by_me((struct sock *)tp);
 tp->bytes_received += delta;
 WRITE_ONCE(tp->rcv_nxt, seq);
}
