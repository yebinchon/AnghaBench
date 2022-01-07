
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __sk_buff {int * cb; } ;


 int BPF_OK ;
 int printk (char*,int ,int ,...) ;

int do_test_cb(struct __sk_buff *skb)
{
 printk("cb0: %x cb1: %x cb2: %x\n", skb->cb[0], skb->cb[1],
        skb->cb[2]);
 printk("cb3: %x cb4: %x\n", skb->cb[3], skb->cb[4]);

 return BPF_OK;
}
