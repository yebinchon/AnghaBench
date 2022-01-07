
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_options_received {int rcv_tsecr; } ;
struct TYPE_2__ {scalar_t__ sysctl_tcp_ecn; } ;
struct net {TYPE_1__ ipv4; } ;
struct dst_entry {int dummy; } ;


 int RTAX_FEATURE_ECN ;
 int TS_OPT_ECN ;
 int dst_feature (struct dst_entry const*,int ) ;

bool cookie_ecn_ok(const struct tcp_options_received *tcp_opt,
     const struct net *net, const struct dst_entry *dst)
{
 bool ecn_ok = tcp_opt->rcv_tsecr & TS_OPT_ECN;

 if (!ecn_ok)
  return 0;

 if (net->ipv4.sysctl_tcp_ecn)
  return 1;

 return dst_feature(dst, RTAX_FEATURE_ECN);
}
