
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tcp_sock {scalar_t__ packets_out; scalar_t__ sacked_out; int lost_out; } ;


 scalar_t__ max (int ,unsigned int) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;

__attribute__((used)) static bool tcp_limit_reno_sacked(struct tcp_sock *tp)
{
 u32 holes;

 holes = max(tp->lost_out, 1U);
 holes = min(holes, tp->packets_out);

 if ((tp->sacked_out + holes) > tp->packets_out) {
  tp->sacked_out = tp->packets_out - holes;
  return 1;
 }
 return 0;
}
