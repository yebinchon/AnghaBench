
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct atalk_iface {int status; int address; TYPE_1__* dev; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 unsigned int AARP_RETRANSMIT_LIMIT ;
 scalar_t__ ARPHRD_LOCALTLK ;
 scalar_t__ ARPHRD_PPP ;
 int ATIF_PROBE_FAIL ;
 int aarp_send_probe (TYPE_1__*,int *) ;
 int aarp_send_probe_phase1 (struct atalk_iface*) ;
 int msleep (int) ;

void aarp_probe_network(struct atalk_iface *atif)
{
 if (atif->dev->type == ARPHRD_LOCALTLK ||
     atif->dev->type == ARPHRD_PPP)
  aarp_send_probe_phase1(atif);
 else {
  unsigned int count;

  for (count = 0; count < AARP_RETRANSMIT_LIMIT; count++) {
   aarp_send_probe(atif->dev, &atif->address);


   msleep(100);

   if (atif->status & ATIF_PROBE_FAIL)
    break;
  }
 }
}
