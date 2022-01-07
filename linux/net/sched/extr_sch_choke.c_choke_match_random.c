
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct choke_sched_data {scalar_t__ head; scalar_t__ tail; } ;


 int choke_match_flow (struct sk_buff*,struct sk_buff*) ;
 struct sk_buff* choke_peek_random (struct choke_sched_data const*,unsigned int*) ;

__attribute__((used)) static bool choke_match_random(const struct choke_sched_data *q,
          struct sk_buff *nskb,
          unsigned int *pidx)
{
 struct sk_buff *oskb;

 if (q->head == q->tail)
  return 0;

 oskb = choke_peek_random(q, pidx);
 return choke_match_flow(oskb, nskb);
}
