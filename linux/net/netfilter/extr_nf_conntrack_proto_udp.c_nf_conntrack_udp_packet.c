
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nf_hook_state {int dummy; } ;
struct TYPE_3__ {scalar_t__ stream_ts; } ;
struct TYPE_4__ {TYPE_1__ udp; } ;
struct nf_conn {int status; TYPE_2__ proto; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;


 int HZ ;
 int IPCT_ASSURED ;
 int IPS_ASSURED_BIT ;
 int IPS_SEEN_REPLY_BIT ;
 int NF_ACCEPT ;
 size_t UDP_CT_REPLIED ;
 size_t UDP_CT_UNREPLIED ;
 scalar_t__ jiffies ;
 int nf_conntrack_event_cache (int ,struct nf_conn*) ;
 int nf_ct_is_confirmed (struct nf_conn*) ;
 int nf_ct_net (struct nf_conn*) ;
 int nf_ct_refresh_acct (struct nf_conn*,int,struct sk_buff*,unsigned int) ;
 unsigned int* nf_ct_timeout_lookup (struct nf_conn*) ;
 int test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;
 scalar_t__ udp_error (struct sk_buff*,unsigned int,struct nf_hook_state const*) ;
 unsigned int* udp_get_timeouts (int ) ;

int nf_conntrack_udp_packet(struct nf_conn *ct,
       struct sk_buff *skb,
       unsigned int dataoff,
       enum ip_conntrack_info ctinfo,
       const struct nf_hook_state *state)
{
 unsigned int *timeouts;

 if (udp_error(skb, dataoff, state))
  return -NF_ACCEPT;

 timeouts = nf_ct_timeout_lookup(ct);
 if (!timeouts)
  timeouts = udp_get_timeouts(nf_ct_net(ct));

 if (!nf_ct_is_confirmed(ct))
  ct->proto.udp.stream_ts = 2 * HZ + jiffies;




 if (test_bit(IPS_SEEN_REPLY_BIT, &ct->status)) {
  unsigned long extra = timeouts[UDP_CT_UNREPLIED];


  if (time_after(jiffies, ct->proto.udp.stream_ts))
   extra = timeouts[UDP_CT_REPLIED];

  nf_ct_refresh_acct(ct, ctinfo, skb, extra);


  if (!test_and_set_bit(IPS_ASSURED_BIT, &ct->status))
   nf_conntrack_event_cache(IPCT_ASSURED, ct);
 } else {
  nf_ct_refresh_acct(ct, ctinfo, skb,
       timeouts[UDP_CT_UNREPLIED]);
 }
 return NF_ACCEPT;
}
