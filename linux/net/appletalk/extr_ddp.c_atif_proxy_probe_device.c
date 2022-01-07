
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int nr_firstnet; int nr_lastnet; } ;
struct TYPE_3__ {int s_net; } ;
struct atalk_iface {TYPE_2__ nets; TYPE_1__ address; } ;
struct atalk_addr {int s_node; int s_net; } ;


 int ATADDR_ANYNET ;
 int ATADDR_ANYNODE ;
 int EADDRINUSE ;
 int aarp_proxy_probe_network (struct atalk_iface*,struct atalk_addr*) ;
 int htons (int) ;
 int jiffies ;
 int ntohs (int ) ;

__attribute__((used)) static int atif_proxy_probe_device(struct atalk_iface *atif,
       struct atalk_addr *proxy_addr)
{
 int netrange = ntohs(atif->nets.nr_lastnet) -
   ntohs(atif->nets.nr_firstnet) + 1;

 int probe_net = ntohs(atif->address.s_net);
 int probe_node = ATADDR_ANYNODE;
 int netct, nodect;


 if (probe_net == ATADDR_ANYNET) {
  probe_net = ntohs(atif->nets.nr_firstnet);
  if (netrange)
   probe_net += jiffies % netrange;
 }

 if (probe_node == ATADDR_ANYNODE)
  probe_node = jiffies & 0xFF;


 for (netct = 0; netct <= netrange; netct++) {

  proxy_addr->s_net = htons(probe_net);
  for (nodect = 0; nodect < 256; nodect++) {
   proxy_addr->s_node = (nodect + probe_node) & 0xFF;
   if (proxy_addr->s_node > 0 &&
       proxy_addr->s_node < 254) {

    int ret = aarp_proxy_probe_network(atif,
            proxy_addr);

    if (ret != -EADDRINUSE)
     return ret;
   }
  }
  probe_net++;
  if (probe_net > ntohs(atif->nets.nr_lastnet))
   probe_net = ntohs(atif->nets.nr_firstnet);
 }

 return -EADDRINUSE;
}
