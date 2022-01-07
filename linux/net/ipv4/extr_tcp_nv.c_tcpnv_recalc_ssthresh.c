
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcp_sock {int snd_cwnd; } ;
struct sock {int dummy; } ;


 int max (int,unsigned int) ;
 int nv_loss_dec_factor ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static u32 tcpnv_recalc_ssthresh(struct sock *sk)
{
 const struct tcp_sock *tp = tcp_sk(sk);

 return max((tp->snd_cwnd * nv_loss_dec_factor) >> 10, 2U);
}
