
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {unsigned int snd_cwnd; int snd_ssthresh; } ;
struct sock {int dummy; } ;
struct dctcp {unsigned int loss_cwnd; } ;


 struct dctcp* inet_csk_ca (struct sock*) ;
 int max (unsigned int,unsigned int) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static void dctcp_react_to_loss(struct sock *sk)
{
 struct dctcp *ca = inet_csk_ca(sk);
 struct tcp_sock *tp = tcp_sk(sk);

 ca->loss_cwnd = tp->snd_cwnd;
 tp->snd_ssthresh = max(tp->snd_cwnd >> 1U, 2U);
}
