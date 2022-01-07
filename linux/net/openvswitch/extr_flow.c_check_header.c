
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;


 int EINVAL ;
 int ENOMEM ;
 int pskb_may_pull (struct sk_buff*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int check_header(struct sk_buff *skb, int len)
{
 if (unlikely(skb->len < len))
  return -EINVAL;
 if (unlikely(!pskb_may_pull(skb, len)))
  return -ENOMEM;
 return 0;
}
