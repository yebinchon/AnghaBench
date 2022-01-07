
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef long u32 ;
struct sock {int dummy; } ;
struct TYPE_3__ {int dccpor_elapsed_time; } ;
struct TYPE_4__ {TYPE_1__ dccps_options_received; } ;


 long DCCP_SANE_RTT_MAX ;
 long DCCP_SANE_RTT_MIN ;
 int DCCP_WARN (char*,long) ;
 TYPE_2__* dccp_sk (struct sock*) ;
 scalar_t__ unlikely (int) ;

u32 dccp_sample_rtt(struct sock *sk, long delta)
{

 delta -= dccp_sk(sk)->dccps_options_received.dccpor_elapsed_time * 10;

 if (unlikely(delta <= 0)) {
  DCCP_WARN("unusable RTT sample %ld, using min\n", delta);
  return DCCP_SANE_RTT_MIN;
 }
 if (unlikely(delta > DCCP_SANE_RTT_MAX)) {
  DCCP_WARN("RTT sample %ld too large, using max\n", delta);
  return DCCP_SANE_RTT_MAX;
 }

 return delta;
}
