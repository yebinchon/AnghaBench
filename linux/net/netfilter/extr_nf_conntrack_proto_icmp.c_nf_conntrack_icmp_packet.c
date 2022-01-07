
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int valid_new ;
typedef int u_int8_t ;
struct sk_buff {int dummy; } ;
struct nf_hook_state {scalar_t__ pf; } ;
struct nf_conn {TYPE_4__* tuplehash; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
struct TYPE_7__ {int type; } ;
struct TYPE_8__ {TYPE_1__ icmp; } ;
struct TYPE_9__ {TYPE_2__ u; } ;
struct TYPE_12__ {TYPE_3__ dst; } ;
struct TYPE_11__ {unsigned int timeout; } ;
struct TYPE_10__ {TYPE_6__ tuple; } ;






 scalar_t__ NFPROTO_IPV4 ;
 int NF_ACCEPT ;
 int nf_ct_dump_tuple_ip (TYPE_6__*) ;
 int nf_ct_net (struct nf_conn*) ;
 int nf_ct_refresh_acct (struct nf_conn*,int,struct sk_buff*,unsigned int) ;
 unsigned int* nf_ct_timeout_lookup (struct nf_conn*) ;
 TYPE_5__* nf_icmp_pernet (int ) ;
 int pr_debug (char*,size_t) ;

int nf_conntrack_icmp_packet(struct nf_conn *ct,
        struct sk_buff *skb,
        enum ip_conntrack_info ctinfo,
        const struct nf_hook_state *state)
{



 unsigned int *timeout = nf_ct_timeout_lookup(ct);
 static const u_int8_t valid_new[] = {
  [130] = 1,
  [128] = 1,
  [129] = 1,
  [131] = 1
 };

 if (state->pf != NFPROTO_IPV4)
  return -NF_ACCEPT;

 if (ct->tuplehash[0].tuple.dst.u.icmp.type >= sizeof(valid_new) ||
     !valid_new[ct->tuplehash[0].tuple.dst.u.icmp.type]) {

  pr_debug("icmp: can't create new conn with type %u\n",
    ct->tuplehash[0].tuple.dst.u.icmp.type);
  nf_ct_dump_tuple_ip(&ct->tuplehash[0].tuple);
  return -NF_ACCEPT;
 }

 if (!timeout)
  timeout = &nf_icmp_pernet(nf_ct_net(ct))->timeout;

 nf_ct_refresh_acct(ct, ctinfo, skb, *timeout);
 return NF_ACCEPT;
}
