
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct sfb_sched_data {scalar_t__ penalty_rate; unsigned long penalty_burst; int tokens_avail; scalar_t__ token_time; } ;


 unsigned long HZ ;
 scalar_t__ jiffies ;
 unsigned long min (unsigned long,scalar_t__) ;

__attribute__((used)) static bool sfb_rate_limit(struct sk_buff *skb, struct sfb_sched_data *q)
{
 if (q->penalty_rate == 0 || q->penalty_burst == 0)
  return 1;

 if (q->tokens_avail < 1) {
  unsigned long age = min(10UL * HZ, jiffies - q->token_time);

  q->tokens_avail = (age * q->penalty_rate) / HZ;
  if (q->tokens_avail > q->penalty_burst)
   q->tokens_avail = q->penalty_burst;
  q->token_time = jiffies;
  if (q->tokens_avail < 1)
   return 1;
 }

 q->tokens_avail--;
 return 0;
}
