
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct tcp_sock {int tcp_mstamp; int tcp_clock_cache; } ;


 int NSEC_PER_USEC ;
 int div_u64 (int ,int ) ;
 int tcp_clock_ns () ;

void tcp_mstamp_refresh(struct tcp_sock *tp)
{
 u64 val = tcp_clock_ns();

 tp->tcp_clock_cache = val;
 tp->tcp_mstamp = div_u64(val, NSEC_PER_USEC);
}
