
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tcf_result {int classid; } ;
struct sk_buff {int tc_at_ingress; int mac_len; int tc_index; int len; TYPE_1__* dev; } ;
struct packet_type {int dummy; } ;
struct net_device {int dummy; } ;
struct mini_Qdisc {int filter_list; } ;
struct TYPE_4__ {int pkt_len; } ;
struct TYPE_3__ {int miniq_ingress; } ;
 int TC_H_MIN (int ) ;
 int __skb_push (struct sk_buff*,int ) ;
 int consume_skb (struct sk_buff*) ;
 int deliver_skb (struct sk_buff*,struct packet_type*,struct net_device*) ;
 int kfree_skb (struct sk_buff*) ;
 int mini_qdisc_bstats_cpu_update (struct mini_Qdisc*,struct sk_buff*) ;
 int mini_qdisc_qstats_cpu_drop (struct mini_Qdisc*) ;
 TYPE_2__* qdisc_skb_cb (struct sk_buff*) ;
 struct mini_Qdisc* rcu_dereference_bh (int ) ;
 int skb_do_redirect (struct sk_buff*) ;
 int tcf_classify (struct sk_buff*,int ,struct tcf_result*,int) ;

__attribute__((used)) static inline struct sk_buff *
sch_handle_ingress(struct sk_buff *skb, struct packet_type **pt_prev, int *ret,
     struct net_device *orig_dev)
{
 return skb;
}
