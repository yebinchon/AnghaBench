
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;



__attribute__((used)) static inline int buf_roundup_len(struct sk_buff *skb)
{
 return (skb->len / 1024 + 1) * 1024;
}
