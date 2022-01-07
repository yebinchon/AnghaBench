
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pktgen_dev {int curfl; int flags; scalar_t__ lflow; int cflows; TYPE_1__* flows; } ;
struct TYPE_2__ {scalar_t__ count; scalar_t__ flags; } ;


 int F_FLOW_SEQ ;
 int prandom_u32 () ;

__attribute__((used)) static inline int f_pick(struct pktgen_dev *pkt_dev)
{
 int flow = pkt_dev->curfl;

 if (pkt_dev->flags & F_FLOW_SEQ) {
  if (pkt_dev->flows[flow].count >= pkt_dev->lflow) {

   pkt_dev->flows[flow].count = 0;
   pkt_dev->flows[flow].flags = 0;
   pkt_dev->curfl += 1;
   if (pkt_dev->curfl >= pkt_dev->cflows)
    pkt_dev->curfl = 0;
  }
 } else {
  flow = prandom_u32() % pkt_dev->cflows;
  pkt_dev->curfl = flow;

  if (pkt_dev->flows[flow].count > pkt_dev->lflow) {
   pkt_dev->flows[flow].count = 0;
   pkt_dev->flows[flow].flags = 0;
  }
 }

 return pkt_dev->curfl;
}
