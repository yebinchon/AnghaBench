
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tcpv_enabled; scalar_t__ tcpv_rtt; int tcpv_rttcnt; int tcpv_minrtt; } ;
union tcp_cc_info {TYPE_1__ vegas; } ;
typedef scalar_t__ u64 ;
typedef int u32 ;
struct tcpvegas_info {int dummy; } ;
struct sock {int dummy; } ;
struct illinois {scalar_t__ sum_rtt; int base_rtt; int cnt_rtt; } ;


 int INET_DIAG_VEGASINFO ;
 int do_div (scalar_t__,int ) ;
 struct illinois* inet_csk_ca (struct sock*) ;

__attribute__((used)) static size_t tcp_illinois_info(struct sock *sk, u32 ext, int *attr,
    union tcp_cc_info *info)
{
 const struct illinois *ca = inet_csk_ca(sk);

 if (ext & (1 << (INET_DIAG_VEGASINFO - 1))) {
  info->vegas.tcpv_enabled = 1;
  info->vegas.tcpv_rttcnt = ca->cnt_rtt;
  info->vegas.tcpv_minrtt = ca->base_rtt;
  info->vegas.tcpv_rtt = 0;

  if (info->vegas.tcpv_rttcnt > 0) {
   u64 t = ca->sum_rtt;

   do_div(t, info->vegas.tcpv_rttcnt);
   info->vegas.tcpv_rtt = t;
  }
  *attr = INET_DIAG_VEGASINFO;
  return sizeof(struct tcpvegas_info);
 }
 return 0;
}
