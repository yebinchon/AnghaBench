
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int priority; scalar_t__ cb; } ;
struct qdisc_skb_cb {int data; } ;
struct __sk_buff {int cb; int priority; } ;


 int QDISC_CB_PRIV_LEN ;
 int memcpy (int ,int *,int ) ;

__attribute__((used)) static void convert_skb_to___skb(struct sk_buff *skb, struct __sk_buff *__skb)
{
 struct qdisc_skb_cb *cb = (struct qdisc_skb_cb *)skb->cb;

 if (!__skb)
  return;

 __skb->priority = skb->priority;
 memcpy(__skb->cb, &cb->data, QDISC_CB_PRIV_LEN);
}
