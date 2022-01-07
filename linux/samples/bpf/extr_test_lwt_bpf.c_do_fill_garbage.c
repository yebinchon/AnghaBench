
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __sk_buff {int dummy; } ;


 int BPF_OK ;
 int __fill_garbage (struct __sk_buff*) ;
 int printk (char*) ;

int do_fill_garbage(struct __sk_buff *skb)
{
 __fill_garbage(skb);
 printk("Set initial 96 bytes of header to FF\n");
 return BPF_OK;
}
