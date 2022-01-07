
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct dst_entry {int dummy; } ;
struct bpf_lwt_prog {int name; int prog; } ;






 int EINVAL ;
 int EPERM ;
 int bpf_compute_data_pointers (struct sk_buff*) ;
 int bpf_prog_run_save_cb (int ,struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int pr_warn_once (char*,...) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int skb_do_redirect (struct sk_buff*) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 int unlikely (int) ;

__attribute__((used)) static int run_lwt_bpf(struct sk_buff *skb, struct bpf_lwt_prog *lwt,
         struct dst_entry *dst, bool can_redirect)
{
 int ret;






 preempt_disable();
 bpf_compute_data_pointers(skb);
 ret = bpf_prog_run_save_cb(lwt->prog, skb);

 switch (ret) {
 case 129:
 case 130:
  break;

 case 128:
  if (unlikely(!can_redirect)) {
   pr_warn_once("Illegal redirect return code in prog %s\n",
         lwt->name ? : "<unknown>");
   ret = 129;
  } else {
   skb_reset_mac_header(skb);
   ret = skb_do_redirect(skb);
   if (ret == 0)
    ret = 128;
  }
  break;

 case 131:
  kfree_skb(skb);
  ret = -EPERM;
  break;

 default:
  pr_warn_once("bpf-lwt: Illegal return value %u, expect packet loss\n", ret);
  kfree_skb(skb);
  ret = -EINVAL;
  break;
 }

 preempt_enable();

 return ret;
}
