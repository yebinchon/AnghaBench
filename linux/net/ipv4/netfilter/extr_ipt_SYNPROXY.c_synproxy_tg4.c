
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xt_synproxy_info {int options; int mss; } ;
struct xt_action_param {int thoff; struct xt_synproxy_info* targinfo; } ;
struct tcphdr {int seq; scalar_t__ syn; scalar_t__ rst; scalar_t__ fin; scalar_t__ ack; scalar_t__ cwr; scalar_t__ ece; } ;
struct synproxy_options {int options; int mss_option; int mss_encode; } ;
struct synproxy_net {TYPE_1__* stats; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
typedef int _th ;
struct TYPE_2__ {int syn_received; } ;


 int IPPROTO_TCP ;
 unsigned int NF_DROP ;
 unsigned int NF_STOLEN ;
 unsigned int XT_CONTINUE ;
 int XT_SYNPROXY_OPT_ECN ;
 int XT_SYNPROXY_OPT_SACK_PERM ;
 int XT_SYNPROXY_OPT_TIMESTAMP ;
 int XT_SYNPROXY_OPT_WSCALE ;
 int consume_skb (struct sk_buff*) ;
 scalar_t__ nf_ip_checksum (struct sk_buff*,int ,int ,int ) ;
 int ntohl (int ) ;
 struct tcphdr* skb_header_pointer (struct sk_buff*,int ,int,struct tcphdr*) ;
 int synproxy_init_timestamp_cookie (struct xt_synproxy_info const*,struct synproxy_options*) ;
 int synproxy_parse_options (struct sk_buff*,int ,struct tcphdr*,struct synproxy_options*) ;
 struct synproxy_net* synproxy_pernet (struct net*) ;
 scalar_t__ synproxy_recv_client_ack (struct net*,struct sk_buff*,struct tcphdr*,struct synproxy_options*,int ) ;
 int synproxy_send_client_synack (struct net*,struct sk_buff*,struct tcphdr*,struct synproxy_options*) ;
 int this_cpu_inc (int ) ;
 int xt_hooknum (struct xt_action_param const*) ;
 struct net* xt_net (struct xt_action_param const*) ;

__attribute__((used)) static unsigned int
synproxy_tg4(struct sk_buff *skb, const struct xt_action_param *par)
{
 const struct xt_synproxy_info *info = par->targinfo;
 struct net *net = xt_net(par);
 struct synproxy_net *snet = synproxy_pernet(net);
 struct synproxy_options opts = {};
 struct tcphdr *th, _th;

 if (nf_ip_checksum(skb, xt_hooknum(par), par->thoff, IPPROTO_TCP))
  return NF_DROP;

 th = skb_header_pointer(skb, par->thoff, sizeof(_th), &_th);
 if (th == ((void*)0))
  return NF_DROP;

 if (!synproxy_parse_options(skb, par->thoff, th, &opts))
  return NF_DROP;

 if (th->syn && !(th->ack || th->fin || th->rst)) {

  this_cpu_inc(snet->stats->syn_received);

  if (th->ece && th->cwr)
   opts.options |= XT_SYNPROXY_OPT_ECN;

  opts.options &= info->options;
  opts.mss_encode = opts.mss_option;
  opts.mss_option = info->mss;
  if (opts.options & XT_SYNPROXY_OPT_TIMESTAMP)
   synproxy_init_timestamp_cookie(info, &opts);
  else
   opts.options &= ~(XT_SYNPROXY_OPT_WSCALE |
       XT_SYNPROXY_OPT_SACK_PERM |
       XT_SYNPROXY_OPT_ECN);

  synproxy_send_client_synack(net, skb, th, &opts);
  consume_skb(skb);
  return NF_STOLEN;
 } else if (th->ack && !(th->fin || th->rst || th->syn)) {

  if (synproxy_recv_client_ack(net, skb, th, &opts, ntohl(th->seq))) {
   consume_skb(skb);
   return NF_STOLEN;
  } else {
   return NF_DROP;
  }
 }

 return XT_CONTINUE;
}
