
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct packet_type {int dummy; } ;
struct net_device {int dummy; } ;


 int deliver_skb (struct sk_buff*,struct packet_type*,struct net_device*) ;
 int nf_hook_ingress (struct sk_buff*) ;
 scalar_t__ nf_hook_ingress_active (struct sk_buff*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static inline int nf_ingress(struct sk_buff *skb, struct packet_type **pt_prev,
        int *ret, struct net_device *orig_dev)
{
 return 0;
}
