
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __sk_buff {int dummy; } ;


 int __do_push_ll_and_redirect (struct __sk_buff*) ;

int do_push_ll_and_redirect_silent(struct __sk_buff *skb)
{
 return __do_push_ll_and_redirect(skb);
}
