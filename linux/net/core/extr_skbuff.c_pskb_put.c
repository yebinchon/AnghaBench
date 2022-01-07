
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int data_len; int len; } ;


 void* skb_put (struct sk_buff*,int) ;

void *pskb_put(struct sk_buff *skb, struct sk_buff *tail, int len)
{
 if (tail != skb) {
  skb->data_len += len;
  skb->len += len;
 }
 return skb_put(tail, len);
}
