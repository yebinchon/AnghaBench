
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int upcall ;
typedef int u64 ;
typedef scalar_t__ u32 ;
struct vport {struct datapath* dp; } ;
struct TYPE_3__ {int flags; } ;
struct sw_flow_key {TYPE_1__ tp; } ;
struct sw_flow_actions {int dummy; } ;
struct sw_flow {int sf_acts; } ;
struct sk_buff {int dummy; } ;
struct dp_upcall_info {int mru; int portid; int cmd; } ;
struct dp_stats_percpu {int syncp; int n_mask_hit; int n_hit; int n_missed; } ;
struct datapath {int table; int stats_percpu; } ;
struct TYPE_4__ {int mru; struct vport* input_vport; } ;


 TYPE_2__* OVS_CB (struct sk_buff*) ;
 int OVS_PACKET_CMD_MISS ;
 int consume_skb (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int memset (struct dp_upcall_info*,int ,int) ;
 int net_dbg_ratelimited (char*,int ,int) ;
 int ovs_dp_name (struct datapath*) ;
 int ovs_dp_upcall (struct datapath*,struct sk_buff*,struct sw_flow_key*,struct dp_upcall_info*,int ) ;
 int ovs_execute_actions (struct datapath*,struct sk_buff*,struct sw_flow_actions*,struct sw_flow_key*) ;
 int ovs_flow_stats_update (struct sw_flow*,int ,struct sk_buff*) ;
 struct sw_flow* ovs_flow_tbl_lookup_stats (int *,struct sw_flow_key*,scalar_t__*) ;
 int ovs_vport_find_upcall_portid (struct vport const*,struct sk_buff*) ;
 struct sw_flow_actions* rcu_dereference (int ) ;
 struct dp_stats_percpu* this_cpu_ptr (int ) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;
 scalar_t__ unlikely (int) ;

void ovs_dp_process_packet(struct sk_buff *skb, struct sw_flow_key *key)
{
 const struct vport *p = OVS_CB(skb)->input_vport;
 struct datapath *dp = p->dp;
 struct sw_flow *flow;
 struct sw_flow_actions *sf_acts;
 struct dp_stats_percpu *stats;
 u64 *stats_counter;
 u32 n_mask_hit;
 int error;

 stats = this_cpu_ptr(dp->stats_percpu);


 flow = ovs_flow_tbl_lookup_stats(&dp->table, key, &n_mask_hit);
 if (unlikely(!flow)) {
  struct dp_upcall_info upcall;

  memset(&upcall, 0, sizeof(upcall));
  upcall.cmd = OVS_PACKET_CMD_MISS;
  upcall.portid = ovs_vport_find_upcall_portid(p, skb);
  upcall.mru = OVS_CB(skb)->mru;
  error = ovs_dp_upcall(dp, skb, key, &upcall, 0);
  if (unlikely(error))
   kfree_skb(skb);
  else
   consume_skb(skb);
  stats_counter = &stats->n_missed;
  goto out;
 }

 ovs_flow_stats_update(flow, key->tp.flags, skb);
 sf_acts = rcu_dereference(flow->sf_acts);
 error = ovs_execute_actions(dp, skb, sf_acts, key);
 if (unlikely(error))
  net_dbg_ratelimited("ovs: action execution error on datapath %s: %d\n",
       ovs_dp_name(dp), error);

 stats_counter = &stats->n_hit;

out:

 u64_stats_update_begin(&stats->syncp);
 (*stats_counter)++;
 stats->n_mask_hit += n_mask_hit;
 u64_stats_update_end(&stats->syncp);
}
