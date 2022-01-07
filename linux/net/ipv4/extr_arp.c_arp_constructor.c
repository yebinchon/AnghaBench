
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int flags; TYPE_1__* header_ops; int addr_len; int * broadcast; int * dev_addr; } ;
struct neighbour {int nud_state; TYPE_3__* ops; int output; scalar_t__ ha; int type; int parms; scalar_t__ primary_key; struct net_device* dev; } ;
struct neigh_parms {int dummy; } ;
struct in_device {struct neigh_parms* arp_parms; } ;
typedef int __be32 ;
struct TYPE_8__ {int output; int connected_output; } ;
struct TYPE_7__ {int key_len; } ;
struct TYPE_6__ {scalar_t__ cache; } ;


 int EINVAL ;
 int IFF_LOOPBACK ;
 int IFF_NOARP ;
 int IFF_POINTOPOINT ;
 int INADDR_ANY ;
 void* NUD_NOARP ;
 int NUD_VALID ;
 int RTN_BROADCAST ;
 int RTN_MULTICAST ;
 struct in_device* __in_dev_get_rcu (struct net_device*) ;
 int __neigh_parms_put (int ) ;
 TYPE_3__ arp_direct_ops ;
 TYPE_3__ arp_generic_ops ;
 TYPE_3__ arp_hh_ops ;
 int arp_mc_map (int ,scalar_t__,struct net_device*,int) ;
 TYPE_2__ arp_tbl ;
 int dev_net (struct net_device*) ;
 int inet_addr_type_dev_table (int ,struct net_device*,int ) ;
 int memcpy (scalar_t__,int *,int ) ;
 int neigh_direct_output ;
 int neigh_parms_clone (struct neigh_parms*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int arp_constructor(struct neighbour *neigh)
{
 __be32 addr;
 struct net_device *dev = neigh->dev;
 struct in_device *in_dev;
 struct neigh_parms *parms;
 u32 inaddr_any = INADDR_ANY;

 if (dev->flags & (IFF_LOOPBACK | IFF_POINTOPOINT))
  memcpy(neigh->primary_key, &inaddr_any, arp_tbl.key_len);

 addr = *(__be32 *)neigh->primary_key;
 rcu_read_lock();
 in_dev = __in_dev_get_rcu(dev);
 if (!in_dev) {
  rcu_read_unlock();
  return -EINVAL;
 }

 neigh->type = inet_addr_type_dev_table(dev_net(dev), dev, addr);

 parms = in_dev->arp_parms;
 __neigh_parms_put(neigh->parms);
 neigh->parms = neigh_parms_clone(parms);
 rcu_read_unlock();

 if (!dev->header_ops) {
  neigh->nud_state = NUD_NOARP;
  neigh->ops = &arp_direct_ops;
  neigh->output = neigh_direct_output;
 } else {
  if (neigh->type == RTN_MULTICAST) {
   neigh->nud_state = NUD_NOARP;
   arp_mc_map(addr, neigh->ha, dev, 1);
  } else if (dev->flags & (IFF_NOARP | IFF_LOOPBACK)) {
   neigh->nud_state = NUD_NOARP;
   memcpy(neigh->ha, dev->dev_addr, dev->addr_len);
  } else if (neigh->type == RTN_BROADCAST ||
      (dev->flags & IFF_POINTOPOINT)) {
   neigh->nud_state = NUD_NOARP;
   memcpy(neigh->ha, dev->broadcast, dev->addr_len);
  }

  if (dev->header_ops->cache)
   neigh->ops = &arp_hh_ops;
  else
   neigh->ops = &arp_generic_ops;

  if (neigh->nud_state & NUD_VALID)
   neigh->output = neigh->ops->connected_output;
  else
   neigh->output = neigh->ops->output;
 }
 return 0;
}
