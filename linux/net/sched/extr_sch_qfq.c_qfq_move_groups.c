
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qfq_sched {unsigned long* bitmaps; } ;



__attribute__((used)) static inline void qfq_move_groups(struct qfq_sched *q, unsigned long mask,
       int src, int dst)
{
 q->bitmaps[dst] |= q->bitmaps[src] & mask;
 q->bitmaps[src] &= ~mask;
}
