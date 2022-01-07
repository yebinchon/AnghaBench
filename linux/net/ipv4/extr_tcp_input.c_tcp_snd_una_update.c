
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tcp_sock {scalar_t__ snd_una; int bytes_acked; } ;
struct sock {int dummy; } ;


 int sock_owned_by_me (struct sock*) ;

__attribute__((used)) static void tcp_snd_una_update(struct tcp_sock *tp, u32 ack)
{
 u32 delta = ack - tp->snd_una;

 sock_owned_by_me((struct sock *)tp);
 tp->bytes_acked += delta;
 tp->snd_una = ack;
}
