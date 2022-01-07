
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfb_sched_data {int decrement; } ;
struct sfb_bucket {int p_mark; } ;


 int prob_minus (int ,int ) ;

__attribute__((used)) static void decrement_prob(struct sfb_bucket *b, struct sfb_sched_data *q)
{
 b->p_mark = prob_minus(b->p_mark, q->decrement);
}
