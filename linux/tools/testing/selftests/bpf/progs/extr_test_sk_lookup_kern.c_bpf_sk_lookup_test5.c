
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __sk_buff {int dummy; } ;


 int lookup_no_release (struct __sk_buff*) ;

int bpf_sk_lookup_test5(struct __sk_buff *skb)
{
 lookup_no_release(skb);
 return 0;
}
