
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ cb; } ;
struct j1939_sk_buff_cb {int dummy; } ;


 int BUILD_BUG_ON (int) ;

__attribute__((used)) static inline
struct j1939_sk_buff_cb *j1939_skb_to_cb(const struct sk_buff *skb)
{
 BUILD_BUG_ON(sizeof(struct j1939_sk_buff_cb) > sizeof(skb->cb));

 return (struct j1939_sk_buff_cb *)skb->cb;
}
