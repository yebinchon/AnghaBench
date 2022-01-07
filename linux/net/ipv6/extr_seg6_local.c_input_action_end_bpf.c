
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_3__ {int prog; } ;
struct seg6_local_lwt {TYPE_1__ bpf; } ;
struct seg6_bpf_srh_state {int hdrlen; int valid; struct ipv6_sr_hdr* srh; } ;
struct ipv6_sr_hdr {int hdrlen; } ;
struct TYPE_4__ {int daddr; } ;





 int EINVAL ;
 int advance_nextseg (struct ipv6_sr_hdr*,int *) ;
 int bpf_compute_data_pointers (struct sk_buff*) ;
 int bpf_prog_run_save_cb (int ,struct sk_buff*) ;
 int dst_input (struct sk_buff*) ;
 struct ipv6_sr_hdr* get_and_validate_srh (struct sk_buff*) ;
 TYPE_2__* ipv6_hdr (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int pr_warn_once (char*,int) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int seg6_bpf_has_valid_srh (struct sk_buff*) ;
 int seg6_bpf_srh_states ;
 int seg6_lookup_nexthop (struct sk_buff*,int *,int ) ;
 struct seg6_bpf_srh_state* this_cpu_ptr (int *) ;

__attribute__((used)) static int input_action_end_bpf(struct sk_buff *skb,
    struct seg6_local_lwt *slwt)
{
 struct seg6_bpf_srh_state *srh_state =
  this_cpu_ptr(&seg6_bpf_srh_states);
 struct ipv6_sr_hdr *srh;
 int ret;

 srh = get_and_validate_srh(skb);
 if (!srh) {
  kfree_skb(skb);
  return -EINVAL;
 }
 advance_nextseg(srh, &ipv6_hdr(skb)->daddr);




 preempt_disable();
 srh_state->srh = srh;
 srh_state->hdrlen = srh->hdrlen << 3;
 srh_state->valid = 1;

 rcu_read_lock();
 bpf_compute_data_pointers(skb);
 ret = bpf_prog_run_save_cb(slwt->bpf.prog, skb);
 rcu_read_unlock();

 switch (ret) {
 case 129:
 case 128:
  break;
 case 130:
  goto drop;
 default:
  pr_warn_once("bpf-seg6local: Illegal return value %u\n", ret);
  goto drop;
 }

 if (srh_state->srh && !seg6_bpf_has_valid_srh(skb))
  goto drop;

 preempt_enable();
 if (ret != 128)
  seg6_lookup_nexthop(skb, ((void*)0), 0);

 return dst_input(skb);

drop:
 preempt_enable();
 kfree_skb(skb);
 return -EINVAL;
}
