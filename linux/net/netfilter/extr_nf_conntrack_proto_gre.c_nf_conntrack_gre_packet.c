
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nf_hook_state {scalar_t__ pf; } ;
struct TYPE_3__ {unsigned int stream_timeout; unsigned int timeout; } ;
struct TYPE_4__ {TYPE_1__ gre; } ;
struct nf_conn {int status; TYPE_2__ proto; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;


 size_t GRE_CT_REPLIED ;
 size_t GRE_CT_UNREPLIED ;
 int IPCT_ASSURED ;
 int IPS_ASSURED_BIT ;
 int IPS_SEEN_REPLY ;
 scalar_t__ NFPROTO_IPV4 ;
 int NF_ACCEPT ;
 unsigned int* gre_get_timeouts (int ) ;
 int nf_conntrack_event_cache (int ,struct nf_conn*) ;
 int nf_ct_is_confirmed (struct nf_conn*) ;
 int nf_ct_net (struct nf_conn*) ;
 int nf_ct_refresh_acct (struct nf_conn*,int,struct sk_buff*,unsigned int) ;
 unsigned int* nf_ct_timeout_lookup (struct nf_conn*) ;
 int test_and_set_bit (int ,int*) ;

int nf_conntrack_gre_packet(struct nf_conn *ct,
       struct sk_buff *skb,
       unsigned int dataoff,
       enum ip_conntrack_info ctinfo,
       const struct nf_hook_state *state)
{
 if (state->pf != NFPROTO_IPV4)
  return -NF_ACCEPT;

 if (!nf_ct_is_confirmed(ct)) {
  unsigned int *timeouts = nf_ct_timeout_lookup(ct);

  if (!timeouts)
   timeouts = gre_get_timeouts(nf_ct_net(ct));



  ct->proto.gre.stream_timeout = timeouts[GRE_CT_REPLIED];
  ct->proto.gre.timeout = timeouts[GRE_CT_UNREPLIED];
 }



 if (ct->status & IPS_SEEN_REPLY) {
  nf_ct_refresh_acct(ct, ctinfo, skb,
       ct->proto.gre.stream_timeout);

  if (!test_and_set_bit(IPS_ASSURED_BIT, &ct->status))
   nf_conntrack_event_cache(IPCT_ASSURED, ct);
 } else
  nf_ct_refresh_acct(ct, ctinfo, skb,
       ct->proto.gre.timeout);

 return NF_ACCEPT;
}
