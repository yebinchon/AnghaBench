
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __sk_buff {scalar_t__ len; } ;


 int barrier () ;

int while_true(volatile struct __sk_buff* skb)
{
 int i = 0;

 while (1) {
  if (skb->len)
   i += 3;
  else
   i += 7;
  if (i == 9)
   break;
  barrier();
  if (i == 10)
   break;
  barrier();
  if (i == 13)
   break;
  barrier();
  if (i == 14)
   break;
 }
 return i;
}
