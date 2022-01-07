
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_bpf_info_v1 {int filter; } ;
struct xt_action_param {struct xt_bpf_info_v1* matchinfo; } ;
struct sk_buff {int dummy; } ;


 int bpf_prog_run_save_cb (int ,struct sk_buff*) ;

__attribute__((used)) static bool bpf_mt_v1(const struct sk_buff *skb, struct xt_action_param *par)
{
 const struct xt_bpf_info_v1 *info = par->matchinfo;

 return !!bpf_prog_run_save_cb(info->filter, (struct sk_buff *) skb);
}
