
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcp_sock {int snd_cwnd; int snd_ssthresh; } ;


 int min (int ,int ) ;

__attribute__((used)) static inline u32 tcp_vegas_ssthresh(struct tcp_sock *tp)
{
 return min(tp->snd_ssthresh, tp->snd_cwnd);
}
