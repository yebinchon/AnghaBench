
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __sk_buff {scalar_t__ len; } ;



int combinations(volatile struct __sk_buff* skb)
{
 int ret = 0, i;

#pragma nounroll
 for (i = 0; i < 20; i++)
  if (skb->len)
   ret |= 1 << i;
 return ret;
}
