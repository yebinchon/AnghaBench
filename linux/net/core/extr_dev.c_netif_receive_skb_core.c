
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int __netif_receive_skb_one_core (struct sk_buff*,int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

int netif_receive_skb_core(struct sk_buff *skb)
{
 int ret;

 rcu_read_lock();
 ret = __netif_receive_skb_one_core(skb, 0);
 rcu_read_unlock();

 return ret;
}
