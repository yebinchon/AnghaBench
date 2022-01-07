
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcf_result {int dummy; } ;
struct TYPE_2__ {int cpu_qstats; int cpu_bstats; } ;
struct tcf_bpf {int tcf_action; TYPE_1__ common; int filter; int tcf_tm; } ;
struct tc_action {int dummy; } ;
struct sk_buff {int mac_len; } ;
struct bpf_prog {int dummy; } ;


 int BPF_PROG_RUN (struct bpf_prog*,struct sk_buff*) ;






 int __skb_pull (struct sk_buff*,int ) ;
 int __skb_push (struct sk_buff*,int ) ;
 int bpf_compute_data_pointers (struct sk_buff*) ;
 int bstats_cpu_update (int ,struct sk_buff*) ;
 int qstats_drop_inc (int ) ;
 struct bpf_prog* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int skb_at_tc_ingress (struct sk_buff*) ;
 int tcf_lastuse_update (int *) ;
 int this_cpu_ptr (int ) ;
 struct tcf_bpf* to_bpf (struct tc_action const*) ;

__attribute__((used)) static int tcf_bpf_act(struct sk_buff *skb, const struct tc_action *act,
         struct tcf_result *res)
{
 bool at_ingress = skb_at_tc_ingress(skb);
 struct tcf_bpf *prog = to_bpf(act);
 struct bpf_prog *filter;
 int action, filter_res;

 tcf_lastuse_update(&prog->tcf_tm);
 bstats_cpu_update(this_cpu_ptr(prog->common.cpu_bstats), skb);

 rcu_read_lock();
 filter = rcu_dereference(prog->filter);
 if (at_ingress) {
  __skb_push(skb, skb->mac_len);
  bpf_compute_data_pointers(skb);
  filter_res = BPF_PROG_RUN(filter, skb);
  __skb_pull(skb, skb->mac_len);
 } else {
  bpf_compute_data_pointers(skb);
  filter_res = BPF_PROG_RUN(filter, skb);
 }
 rcu_read_unlock();
 switch (filter_res) {
 case 132:
 case 131:
 case 133:
 case 130:
  action = filter_res;
  break;
 case 129:
  action = filter_res;
  qstats_drop_inc(this_cpu_ptr(prog->common.cpu_qstats));
  break;
 case 128:
  action = prog->tcf_action;
  break;
 default:
  action = 128;
  break;
 }

 return action;
}
