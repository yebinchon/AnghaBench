
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_bpf_info {int filter; } ;
struct xt_action_param {struct xt_bpf_info* matchinfo; } ;
struct sk_buff {int dummy; } ;


 int BPF_PROG_RUN (int ,struct sk_buff const*) ;

__attribute__((used)) static bool bpf_mt(const struct sk_buff *skb, struct xt_action_param *par)
{
 const struct xt_bpf_info *info = par->matchinfo;

 return BPF_PROG_RUN(info->filter, skb);
}
