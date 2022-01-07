
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tcpv_minrtt; int tcpv_rtt; int tcpv_rttcnt; int tcpv_enabled; } ;
union tcp_cc_info {TYPE_1__ vegas; } ;
typedef int u32 ;
struct vegas {int minRTT; int baseRTT; int cntRTT; int doing_vegas_now; } ;
struct tcpvegas_info {int dummy; } ;
struct sock {int dummy; } ;


 int INET_DIAG_VEGASINFO ;
 struct vegas* inet_csk_ca (struct sock*) ;

size_t tcp_vegas_get_info(struct sock *sk, u32 ext, int *attr,
     union tcp_cc_info *info)
{
 const struct vegas *ca = inet_csk_ca(sk);

 if (ext & (1 << (INET_DIAG_VEGASINFO - 1))) {
  info->vegas.tcpv_enabled = ca->doing_vegas_now,
  info->vegas.tcpv_rttcnt = ca->cntRTT,
  info->vegas.tcpv_rtt = ca->baseRTT,
  info->vegas.tcpv_minrtt = ca->minRTT,

  *attr = INET_DIAG_VEGASINFO;
  return sizeof(struct tcpvegas_info);
 }
 return 0;
}
