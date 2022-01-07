
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __sk_buff {int* cb; int priority; } ;



int process(struct __sk_buff *skb)
{
#pragma clang loop unroll(full)
 for (int i = 0; i < 5; i++) {
  if (skb->cb[i] != i + 1)
   return 1;
  skb->cb[i]++;
 }
 skb->priority++;

 return 0;
}
