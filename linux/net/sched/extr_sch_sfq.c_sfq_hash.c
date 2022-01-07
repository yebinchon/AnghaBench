
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct sfq_sched_data {int divisor; int perturbation; } ;


 int skb_get_hash_perturb (struct sk_buff const*,int *) ;

__attribute__((used)) static unsigned int sfq_hash(const struct sfq_sched_data *q,
        const struct sk_buff *skb)
{
 return skb_get_hash_perturb(skb, &q->perturbation) & (q->divisor - 1);
}
