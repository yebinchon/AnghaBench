
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __sk_buff {int dummy; } ;


 int BPF_OK ;

int do_nop(struct __sk_buff *skb)
{
 return BPF_OK;
}
