
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sfq_sched_data {int cur_depth; TYPE_1__* slots; } ;
typedef size_t sfq_index ;
struct TYPE_2__ {int qlen; } ;


 int sfq_link (struct sfq_sched_data*,size_t) ;
 int sfq_unlink (struct sfq_sched_data*,size_t,size_t,size_t) ;

__attribute__((used)) static inline void sfq_inc(struct sfq_sched_data *q, sfq_index x)
{
 sfq_index p, n;
 int d;

 sfq_unlink(q, x, n, p);

 d = ++q->slots[x].qlen;
 if (q->cur_depth < d)
  q->cur_depth = d;
 sfq_link(q, x);
}
