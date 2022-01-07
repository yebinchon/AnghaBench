
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfq_sched_data {int flags; } ;


 int TC_RED_ECN ;

__attribute__((used)) static int sfq_prob_mark(const struct sfq_sched_data *q)
{
 return q->flags & TC_RED_ECN;
}
