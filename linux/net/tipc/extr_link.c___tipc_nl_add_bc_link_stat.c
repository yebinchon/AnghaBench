
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_stats {int recv_pkts; int recv_fragments; int recv_fragmented; int recv_bundles; int recv_bundled; int sent_pkts; int sent_fragments; int sent_fragmented; int sent_bundles; int sent_bundled; int recv_nacks; int deferred_recv; int sent_nacks; int sent_acks; int retransmitted; int duplicates; int link_congs; int max_queue_sz; int queue_sz_counts; int accu_queue_sz; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
typedef int __u32 ;


 int ARRAY_SIZE (struct nla_map*) ;
 int EMSGSIZE ;
 int TIPC_NLA_LINK_STATS ;
 int TIPC_NLA_STATS_AVG_QUEUE ;
 int TIPC_NLA_STATS_DUPLICATES ;
 int TIPC_NLA_STATS_LINK_CONGS ;
 int TIPC_NLA_STATS_MAX_QUEUE ;
 int TIPC_NLA_STATS_RETRANSMITTED ;
 int TIPC_NLA_STATS_RX_BUNDLED ;
 int TIPC_NLA_STATS_RX_BUNDLES ;
 int TIPC_NLA_STATS_RX_DEFERRED ;
 int TIPC_NLA_STATS_RX_FRAGMENTED ;
 int TIPC_NLA_STATS_RX_FRAGMENTS ;
 int TIPC_NLA_STATS_RX_INFO ;
 int TIPC_NLA_STATS_RX_NACKS ;
 int TIPC_NLA_STATS_TX_ACKS ;
 int TIPC_NLA_STATS_TX_BUNDLED ;
 int TIPC_NLA_STATS_TX_BUNDLES ;
 int TIPC_NLA_STATS_TX_FRAGMENTED ;
 int TIPC_NLA_STATS_TX_FRAGMENTS ;
 int TIPC_NLA_STATS_TX_INFO ;
 int TIPC_NLA_STATS_TX_NACKS ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int __tipc_nl_add_bc_link_stat(struct sk_buff *skb,
          struct tipc_stats *stats)
{
 int i;
 struct nlattr *nest;

 struct nla_map {
  __u32 key;
  __u32 val;
 };

 struct nla_map map[] = {
  {TIPC_NLA_STATS_RX_INFO, stats->recv_pkts},
  {TIPC_NLA_STATS_RX_FRAGMENTS, stats->recv_fragments},
  {TIPC_NLA_STATS_RX_FRAGMENTED, stats->recv_fragmented},
  {TIPC_NLA_STATS_RX_BUNDLES, stats->recv_bundles},
  {TIPC_NLA_STATS_RX_BUNDLED, stats->recv_bundled},
  {TIPC_NLA_STATS_TX_INFO, stats->sent_pkts},
  {TIPC_NLA_STATS_TX_FRAGMENTS, stats->sent_fragments},
  {TIPC_NLA_STATS_TX_FRAGMENTED, stats->sent_fragmented},
  {TIPC_NLA_STATS_TX_BUNDLES, stats->sent_bundles},
  {TIPC_NLA_STATS_TX_BUNDLED, stats->sent_bundled},
  {TIPC_NLA_STATS_RX_NACKS, stats->recv_nacks},
  {TIPC_NLA_STATS_RX_DEFERRED, stats->deferred_recv},
  {TIPC_NLA_STATS_TX_NACKS, stats->sent_nacks},
  {TIPC_NLA_STATS_TX_ACKS, stats->sent_acks},
  {TIPC_NLA_STATS_RETRANSMITTED, stats->retransmitted},
  {TIPC_NLA_STATS_DUPLICATES, stats->duplicates},
  {TIPC_NLA_STATS_LINK_CONGS, stats->link_congs},
  {TIPC_NLA_STATS_MAX_QUEUE, stats->max_queue_sz},
  {TIPC_NLA_STATS_AVG_QUEUE, stats->queue_sz_counts ?
   (stats->accu_queue_sz / stats->queue_sz_counts) : 0}
 };

 nest = nla_nest_start_noflag(skb, TIPC_NLA_LINK_STATS);
 if (!nest)
  return -EMSGSIZE;

 for (i = 0; i < ARRAY_SIZE(map); i++)
  if (nla_put_u32(skb, map[i].key, map[i].val))
   goto msg_full;

 nla_nest_end(skb, nest);

 return 0;
msg_full:
 nla_nest_cancel(skb, nest);

 return -EMSGSIZE;
}
