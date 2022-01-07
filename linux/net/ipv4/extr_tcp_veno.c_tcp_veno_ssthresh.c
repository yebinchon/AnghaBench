
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct veno {scalar_t__ diff; } ;
struct tcp_sock {int snd_cwnd; } ;
struct sock {int dummy; } ;


 scalar_t__ beta ;
 struct veno* inet_csk_ca (struct sock*) ;
 int max (unsigned int,unsigned int) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static u32 tcp_veno_ssthresh(struct sock *sk)
{
 const struct tcp_sock *tp = tcp_sk(sk);
 struct veno *veno = inet_csk_ca(sk);

 if (veno->diff < beta)

  return max(tp->snd_cwnd * 4 / 5, 2U);
 else

  return max(tp->snd_cwnd >> 1U, 2U);
}
