
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tcphdr {int ack_seq; } ;
struct synproxy_options {int mss_option; int options; } ;
struct synproxy_net {TYPE_1__* stats; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int cookie_valid; int cookie_invalid; } ;


 int NF_SYNPROXY_OPT_MSS ;
 int NF_SYNPROXY_OPT_TIMESTAMP ;
 int __cookie_v4_check (int ,struct tcphdr const*,scalar_t__) ;
 int ip_hdr (struct sk_buff const*) ;
 scalar_t__ ntohl (int ) ;
 int synproxy_check_timestamp_cookie (struct synproxy_options*) ;
 struct synproxy_net* synproxy_pernet (struct net*) ;
 int synproxy_send_server_syn (struct net*,struct sk_buff const*,struct tcphdr const*,struct synproxy_options*,int ) ;
 int this_cpu_inc (int ) ;

bool
synproxy_recv_client_ack(struct net *net,
    const struct sk_buff *skb, const struct tcphdr *th,
    struct synproxy_options *opts, u32 recv_seq)
{
 struct synproxy_net *snet = synproxy_pernet(net);
 int mss;

 mss = __cookie_v4_check(ip_hdr(skb), th, ntohl(th->ack_seq) - 1);
 if (mss == 0) {
  this_cpu_inc(snet->stats->cookie_invalid);
  return 0;
 }

 this_cpu_inc(snet->stats->cookie_valid);
 opts->mss_option = mss;
 opts->options |= NF_SYNPROXY_OPT_MSS;

 if (opts->options & NF_SYNPROXY_OPT_TIMESTAMP)
  synproxy_check_timestamp_cookie(opts);

 synproxy_send_server_syn(net, skb, th, opts, recv_seq);
 return 1;
}
