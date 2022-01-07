
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cfpkt {int dummy; } ;
struct TYPE_2__ {int priority; } ;


 TYPE_1__* pkt_to_skb (struct cfpkt*) ;

void cfpkt_set_prio(struct cfpkt *pkt, int prio)
{
 pkt_to_skb(pkt)->priority = prio;
}
