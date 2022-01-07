
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sock {int dummy; } ;
struct dctcp {int loss_cwnd; } ;
struct TYPE_2__ {int snd_cwnd; } ;


 struct dctcp* inet_csk_ca (struct sock*) ;
 int max (int ,int ) ;
 TYPE_1__* tcp_sk (struct sock*) ;

__attribute__((used)) static u32 dctcp_cwnd_undo(struct sock *sk)
{
 const struct dctcp *ca = inet_csk_ca(sk);

 return max(tcp_sk(sk)->snd_cwnd, ca->loss_cwnd);
}
