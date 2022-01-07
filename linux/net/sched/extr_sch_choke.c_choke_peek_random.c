
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct choke_sched_data {unsigned int head; unsigned int tab_mask; struct sk_buff** tab; } ;


 int choke_len (struct choke_sched_data const*) ;
 unsigned int prandom_u32_max (int ) ;

__attribute__((used)) static struct sk_buff *choke_peek_random(const struct choke_sched_data *q,
      unsigned int *pidx)
{
 struct sk_buff *skb;
 int retrys = 3;

 do {
  *pidx = (q->head + prandom_u32_max(choke_len(q))) & q->tab_mask;
  skb = q->tab[*pidx];
  if (skb)
   return skb;
 } while (--retrys > 0);

 return q->tab[*pidx = q->head];
}
