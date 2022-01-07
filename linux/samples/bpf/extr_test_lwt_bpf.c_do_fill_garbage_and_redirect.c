
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __sk_buff {int dummy; } ;


 int DST_IFINDEX ;
 int __fill_garbage (struct __sk_buff*) ;
 int bpf_redirect (int,int ) ;
 int printk (char*,int) ;

int do_fill_garbage_and_redirect(struct __sk_buff *skb)
{
 int ifindex = DST_IFINDEX;
 __fill_garbage(skb);
 printk("redirected to %d\n", ifindex);
 return bpf_redirect(ifindex, 0);
}
