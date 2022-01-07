
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct sfb_sched_data {int dummy; } ;


 int decrement_one_qlen (scalar_t__,int,struct sfb_sched_data*) ;
 scalar_t__ sfb_hash (struct sk_buff const*,int) ;

__attribute__((used)) static void decrement_qlen(const struct sk_buff *skb, struct sfb_sched_data *q)
{
 u32 sfbhash;

 sfbhash = sfb_hash(skb, 0);
 if (sfbhash)
  decrement_one_qlen(sfbhash, 0, q);

 sfbhash = sfb_hash(skb, 1);
 if (sfbhash)
  decrement_one_qlen(sfbhash, 1, q);
}
