
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __sk_buff {int dummy; } ;


 int TC_ACT_OK ;
 int log_nth_level (struct __sk_buff*,int) ;

int log_cgroup_id(struct __sk_buff *skb)
{



 log_nth_level(skb, 0);
 log_nth_level(skb, 1);
 log_nth_level(skb, 2);
 log_nth_level(skb, 3);

 return TC_ACT_OK;
}
