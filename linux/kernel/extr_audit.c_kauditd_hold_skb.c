
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 scalar_t__ audit_backlog_limit ;
 int audit_default ;
 int audit_hold_queue ;
 int audit_log_lost (char*) ;
 int kauditd_printk_skb (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ skb_queue_len (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

__attribute__((used)) static void kauditd_hold_skb(struct sk_buff *skb)
{


 kauditd_printk_skb(skb);


 if (!audit_default) {
  kfree_skb(skb);
  return;
 }


 if (!audit_backlog_limit ||
     skb_queue_len(&audit_hold_queue) < audit_backlog_limit) {
  skb_queue_tail(&audit_hold_queue, skb);
  return;
 }


 audit_log_lost("kauditd hold queue overflow");
 kfree_skb(skb);
}
