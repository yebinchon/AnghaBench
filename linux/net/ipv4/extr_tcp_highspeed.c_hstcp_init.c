
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {int snd_cwnd_clamp; } ;
struct sock {int dummy; } ;
struct hstcp {scalar_t__ ai; } ;


 struct hstcp* inet_csk_ca (struct sock*) ;
 int min_t (int ,int ,int) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int u32 ;

__attribute__((used)) static void hstcp_init(struct sock *sk)
{
 struct tcp_sock *tp = tcp_sk(sk);
 struct hstcp *ca = inet_csk_ca(sk);

 ca->ai = 0;



 tp->snd_cwnd_clamp = min_t(u32, tp->snd_cwnd_clamp, 0xffffffff/128);
}
