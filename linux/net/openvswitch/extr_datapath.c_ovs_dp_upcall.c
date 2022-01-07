
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sw_flow_key {int dummy; } ;
struct sk_buff {int dummy; } ;
struct dp_upcall_info {scalar_t__ portid; } ;
struct dp_stats_percpu {int syncp; int n_lost; } ;
struct datapath {int stats_percpu; } ;


 int ENOTCONN ;
 int queue_gso_packets (struct datapath*,struct sk_buff*,struct sw_flow_key const*,struct dp_upcall_info const*,int ) ;
 int queue_userspace_packet (struct datapath*,struct sk_buff*,struct sw_flow_key const*,struct dp_upcall_info const*,int ) ;
 int skb_is_gso (struct sk_buff*) ;
 struct dp_stats_percpu* this_cpu_ptr (int ) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

int ovs_dp_upcall(struct datapath *dp, struct sk_buff *skb,
    const struct sw_flow_key *key,
    const struct dp_upcall_info *upcall_info,
    uint32_t cutlen)
{
 struct dp_stats_percpu *stats;
 int err;

 if (upcall_info->portid == 0) {
  err = -ENOTCONN;
  goto err;
 }

 if (!skb_is_gso(skb))
  err = queue_userspace_packet(dp, skb, key, upcall_info, cutlen);
 else
  err = queue_gso_packets(dp, skb, key, upcall_info, cutlen);
 if (err)
  goto err;

 return 0;

err:
 stats = this_cpu_ptr(dp->stats_percpu);

 u64_stats_update_begin(&stats->syncp);
 stats->n_lost++;
 u64_stats_update_end(&stats->syncp);

 return err;
}
