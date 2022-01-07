
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nr_firstnet; scalar_t__ nr_lastnet; } ;
struct TYPE_3__ {int s_node; scalar_t__ s_net; } ;
struct atalk_iface {int status; TYPE_2__ nets; TYPE_1__ address; struct atalk_iface* next; } ;
typedef scalar_t__ __be16 ;


 scalar_t__ ATADDR_ANYNET ;
 int ATADDR_ANYNODE ;
 int ATADDR_BCAST ;
 int ATIF_PROBE ;
 struct atalk_iface* atalk_interfaces ;
 int atalk_interfaces_lock ;
 scalar_t__ ntohs (scalar_t__) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;

__attribute__((used)) static struct atalk_iface *atalk_find_interface(__be16 net, int node)
{
 struct atalk_iface *iface;

 read_lock_bh(&atalk_interfaces_lock);
 for (iface = atalk_interfaces; iface; iface = iface->next) {
  if ((node == ATADDR_BCAST ||
       node == ATADDR_ANYNODE ||
       iface->address.s_node == node) &&
      iface->address.s_net == net &&
      !(iface->status & ATIF_PROBE))
   break;


  if (node == ATADDR_ANYNODE && net != ATADDR_ANYNET &&
      ntohs(iface->nets.nr_firstnet) <= ntohs(net) &&
      ntohs(net) <= ntohs(iface->nets.nr_lastnet))
   break;
 }
 read_unlock_bh(&atalk_interfaces_lock);
 return iface;
}
