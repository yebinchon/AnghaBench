
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __sk_buff {int dummy; } ;


 int DST_IFINDEX ;
 int __do_push_ll_and_redirect (struct __sk_buff*) ;
 int printk (char*,int) ;

int do_push_ll_and_redirect(struct __sk_buff *skb)
{
 int ret, ifindex = DST_IFINDEX;

 ret = __do_push_ll_and_redirect(skb);
 if (ret >= 0)
  printk("redirected to %d\n", ifindex);

 return ret;
}
