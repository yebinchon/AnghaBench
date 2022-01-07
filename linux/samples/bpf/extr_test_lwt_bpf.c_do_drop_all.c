
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __sk_buff {int dummy; } ;


 int BPF_DROP ;
 int printk (char*,int) ;

int do_drop_all(struct __sk_buff *skb)
{
 printk("dropping with: %d\n", BPF_DROP);
 return BPF_DROP;
}
