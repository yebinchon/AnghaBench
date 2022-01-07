
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int __skb_trim_rcsum (struct sk_buff*,unsigned int) ;

__attribute__((used)) static int bpf_skb_trim_rcsum(struct sk_buff *skb, unsigned int new_len)
{
 return __skb_trim_rcsum(skb, new_len);
}
