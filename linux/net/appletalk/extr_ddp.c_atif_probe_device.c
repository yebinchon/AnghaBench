
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int nr_firstnet; int nr_lastnet; } ;
struct TYPE_3__ {int s_node; int s_net; } ;
struct atalk_iface {int status; TYPE_2__ nets; TYPE_1__ address; } ;


 int ATADDR_ANYNET ;
 int ATADDR_ANYNODE ;
 int ATIF_PROBE ;
 int ATIF_PROBE_FAIL ;
 int EADDRINUSE ;
 int aarp_probe_network (struct atalk_iface*) ;
 int htons (int) ;
 int jiffies ;
 int ntohs (int ) ;

__attribute__((used)) static int atif_probe_device(struct atalk_iface *atif)
{
 int netrange = ntohs(atif->nets.nr_lastnet) -
   ntohs(atif->nets.nr_firstnet) + 1;
 int probe_net = ntohs(atif->address.s_net);
 int probe_node = atif->address.s_node;
 int netct, nodect;


 if (probe_net == ATADDR_ANYNET) {
  probe_net = ntohs(atif->nets.nr_firstnet);
  if (netrange)
   probe_net += jiffies % netrange;
 }
 if (probe_node == ATADDR_ANYNODE)
  probe_node = jiffies & 0xFF;


 atif->status |= ATIF_PROBE;
 for (netct = 0; netct <= netrange; netct++) {

  atif->address.s_net = htons(probe_net);
  for (nodect = 0; nodect < 256; nodect++) {
   atif->address.s_node = (nodect + probe_node) & 0xFF;
   if (atif->address.s_node > 0 &&
       atif->address.s_node < 254) {

    aarp_probe_network(atif);

    if (!(atif->status & ATIF_PROBE_FAIL)) {
     atif->status &= ~ATIF_PROBE;
     return 0;
    }
   }
   atif->status &= ~ATIF_PROBE_FAIL;
  }
  probe_net++;
  if (probe_net > ntohs(atif->nets.nr_lastnet))
   probe_net = ntohs(atif->nets.nr_firstnet);
 }
 atif->status &= ~ATIF_PROBE;

 return -EADDRINUSE;
}
