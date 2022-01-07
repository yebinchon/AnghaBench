
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tcp_sock {int snd_cwnd; } ;
struct sock {int dummy; } ;
struct hstcp {size_t ai; } ;
struct TYPE_2__ {int md; } ;


 TYPE_1__* hstcp_aimd_vals ;
 struct hstcp* inet_csk_ca (struct sock*) ;
 int max (int,unsigned int) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static u32 hstcp_ssthresh(struct sock *sk)
{
 const struct tcp_sock *tp = tcp_sk(sk);
 struct hstcp *ca = inet_csk_ca(sk);


 return max(tp->snd_cwnd - ((tp->snd_cwnd * hstcp_aimd_vals[ca->ai].md) >> 8), 2U);
}
