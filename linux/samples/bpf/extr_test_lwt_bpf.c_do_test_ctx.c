
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __sk_buff {int ifindex; int ingress_ifindex; int * cb; int protocol; int hash; int len; } ;


 int BPF_OK ;
 int CB_MAGIC ;
 int printk (char*,int ,int ,int ) ;

int do_test_ctx(struct __sk_buff *skb)
{
 skb->cb[0] = CB_MAGIC;
 printk("len %d hash %d protocol %d\n", skb->len, skb->hash,
        skb->protocol);
 printk("cb %d ingress_ifindex %d ifindex %d\n", skb->cb[0],
        skb->ingress_ifindex, skb->ifindex);

 return BPF_OK;
}
