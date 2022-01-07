
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct receiver {int matches; int data; int (* func ) (struct sk_buff*,int ) ;} ;


 int stub1 (struct sk_buff*,int ) ;

__attribute__((used)) static inline void deliver(struct sk_buff *skb, struct receiver *rcv)
{
 rcv->func(skb, rcv->data);
 rcv->matches++;
}
