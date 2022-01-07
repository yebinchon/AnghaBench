
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcp_sock {unsigned int snd_cwnd; } ;
struct sock {int dummy; } ;
struct dctcp {unsigned int loss_cwnd; unsigned int dctcp_alpha; } ;


 struct dctcp* inet_csk_ca (struct sock*) ;
 int max (unsigned int,unsigned int) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static u32 dctcp_ssthresh(struct sock *sk)
{
 struct dctcp *ca = inet_csk_ca(sk);
 struct tcp_sock *tp = tcp_sk(sk);

 ca->loss_cwnd = tp->snd_cwnd;
 return max(tp->snd_cwnd - ((tp->snd_cwnd * ca->dctcp_alpha) >> 11U), 2U);
}
