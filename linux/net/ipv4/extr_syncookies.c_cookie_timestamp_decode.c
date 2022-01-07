
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tcp_options_received {int rcv_tsecr; int wscale_ok; int snd_wscale; int sack_ok; int saw_tstamp; } ;
struct TYPE_2__ {scalar_t__ sysctl_tcp_window_scaling; int sysctl_tcp_sack; int sysctl_tcp_timestamps; } ;
struct net {TYPE_1__ ipv4; } ;


 int TCP_SACK_SEEN ;
 int TS_OPT_SACK ;
 int TS_OPT_WSCALE_MASK ;
 int tcp_clear_options (struct tcp_options_received*) ;

bool cookie_timestamp_decode(const struct net *net,
        struct tcp_options_received *tcp_opt)
{

 u32 options = tcp_opt->rcv_tsecr;

 if (!tcp_opt->saw_tstamp) {
  tcp_clear_options(tcp_opt);
  return 1;
 }

 if (!net->ipv4.sysctl_tcp_timestamps)
  return 0;

 tcp_opt->sack_ok = (options & TS_OPT_SACK) ? TCP_SACK_SEEN : 0;

 if (tcp_opt->sack_ok && !net->ipv4.sysctl_tcp_sack)
  return 0;

 if ((options & TS_OPT_WSCALE_MASK) == TS_OPT_WSCALE_MASK)
  return 1;

 tcp_opt->wscale_ok = 1;
 tcp_opt->snd_wscale = options & TS_OPT_WSCALE_MASK;

 return net->ipv4.sysctl_tcp_window_scaling != 0;
}
