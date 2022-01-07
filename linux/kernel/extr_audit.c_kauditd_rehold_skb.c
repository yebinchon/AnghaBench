
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int audit_hold_queue ;
 int skb_queue_head (int *,struct sk_buff*) ;

__attribute__((used)) static void kauditd_rehold_skb(struct sk_buff *skb)
{

 skb_queue_head(&audit_hold_queue, skb);
}
