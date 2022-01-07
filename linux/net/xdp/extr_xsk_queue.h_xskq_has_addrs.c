
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct xsk_queue {scalar_t__ prod_tail; scalar_t__ cons_tail; TYPE_1__* ring; } ;
struct TYPE_2__ {int producer; } ;


 scalar_t__ READ_ONCE (int ) ;

__attribute__((used)) static inline bool xskq_has_addrs(struct xsk_queue *q, u32 cnt)
{
 u32 entries = q->prod_tail - q->cons_tail;

 if (entries >= cnt)
  return 1;


 q->prod_tail = READ_ONCE(q->ring->producer);
 entries = q->prod_tail - q->cons_tail;

 return entries >= cnt;
}
