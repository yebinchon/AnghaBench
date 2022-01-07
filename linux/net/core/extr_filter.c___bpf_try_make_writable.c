
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int skb_ensure_writable (struct sk_buff*,unsigned int) ;

__attribute__((used)) static inline int __bpf_try_make_writable(struct sk_buff *skb,
       unsigned int write_len)
{
 return skb_ensure_writable(skb, write_len);
}
