
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct net_device {int name; int type; int addr_len; } ;
struct neighbour {int nud_state; int lock; int ha; } ;
struct TYPE_4__ {int sa_family; int sa_data; } ;
struct arpreq {int arp_dev; TYPE_2__ arp_ha; int arp_flags; int arp_pa; } ;
typedef int __be32 ;


 int ENXIO ;
 int NUD_NOARP ;
 int arp_state_to_flags (struct neighbour*) ;
 int arp_tbl ;
 int memcpy (int ,int ,int ) ;
 struct neighbour* neigh_lookup (int *,int *,struct net_device*) ;
 int neigh_release (struct neighbour*) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static int arp_req_get(struct arpreq *r, struct net_device *dev)
{
 __be32 ip = ((struct sockaddr_in *) &r->arp_pa)->sin_addr.s_addr;
 struct neighbour *neigh;
 int err = -ENXIO;

 neigh = neigh_lookup(&arp_tbl, &ip, dev);
 if (neigh) {
  if (!(neigh->nud_state & NUD_NOARP)) {
   read_lock_bh(&neigh->lock);
   memcpy(r->arp_ha.sa_data, neigh->ha, dev->addr_len);
   r->arp_flags = arp_state_to_flags(neigh);
   read_unlock_bh(&neigh->lock);
   r->arp_ha.sa_family = dev->type;
   strlcpy(r->arp_dev, dev->name, sizeof(r->arp_dev));
   err = 0;
  }
  neigh_release(neigh);
 }
 return err;
}
