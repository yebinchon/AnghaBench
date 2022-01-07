
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned int len; scalar_t__ data; } ;


 int __skb_grow_rcsum (struct sk_buff*,unsigned int) ;
 int memset (scalar_t__,int ,unsigned int) ;

__attribute__((used)) static int bpf_skb_grow_rcsum(struct sk_buff *skb, unsigned int new_len)
{
 unsigned int old_len = skb->len;
 int ret;

 ret = __skb_grow_rcsum(skb, new_len);
 if (!ret)
  memset(skb->data + old_len, 0, new_len - old_len);
 return ret;
}
