
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sock {int dummy; } ;
struct TYPE_2__ {int snd_ssthresh; } ;


 int bbr_save_cwnd (struct sock*) ;
 TYPE_1__* tcp_sk (struct sock*) ;

__attribute__((used)) static u32 bbr_ssthresh(struct sock *sk)
{
 bbr_save_cwnd(sk);
 return tcp_sk(sk)->snd_ssthresh;
}
