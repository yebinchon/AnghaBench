
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int audit_retry_queue ;
 int skb_queue_tail (int *,struct sk_buff*) ;

__attribute__((used)) static void kauditd_retry_skb(struct sk_buff *skb)
{



 skb_queue_tail(&audit_retry_queue, skb);
}
