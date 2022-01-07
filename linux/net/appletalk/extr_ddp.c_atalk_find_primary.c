
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct atalk_addr {int dummy; } ;
struct atalk_iface {struct atalk_addr address; TYPE_1__* dev; struct atalk_iface* next; } ;
struct TYPE_2__ {int flags; } ;


 int IFF_LOOPBACK ;
 int IFF_POINTOPOINT ;
 struct atalk_iface* atalk_interfaces ;
 int atalk_interfaces_lock ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;

__attribute__((used)) static struct atalk_addr *atalk_find_primary(void)
{
 struct atalk_iface *fiface = ((void*)0);
 struct atalk_addr *retval;
 struct atalk_iface *iface;





 read_lock_bh(&atalk_interfaces_lock);
 for (iface = atalk_interfaces; iface; iface = iface->next) {
  if (!fiface && !(iface->dev->flags & IFF_LOOPBACK))
   fiface = iface;
  if (!(iface->dev->flags & (IFF_LOOPBACK | IFF_POINTOPOINT))) {
   retval = &iface->address;
   goto out;
  }
 }

 if (fiface)
  retval = &fiface->address;
 else if (atalk_interfaces)
  retval = &atalk_interfaces->address;
 else
  retval = ((void*)0);
out:
 read_unlock_bh(&atalk_interfaces_lock);
 return retval;
}
