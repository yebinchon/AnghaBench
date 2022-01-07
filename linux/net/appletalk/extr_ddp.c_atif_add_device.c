
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {struct atalk_iface* atalk_ptr; } ;
struct atalk_addr {int dummy; } ;
struct atalk_iface {struct atalk_iface* next; scalar_t__ status; struct atalk_addr address; struct net_device* dev; } ;


 int GFP_KERNEL ;
 struct atalk_iface* atalk_interfaces ;
 int atalk_interfaces_lock ;
 int dev_hold (struct net_device*) ;
 struct atalk_iface* kzalloc (int,int ) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static struct atalk_iface *atif_add_device(struct net_device *dev,
        struct atalk_addr *sa)
{
 struct atalk_iface *iface = kzalloc(sizeof(*iface), GFP_KERNEL);

 if (!iface)
  goto out;

 dev_hold(dev);
 iface->dev = dev;
 dev->atalk_ptr = iface;
 iface->address = *sa;
 iface->status = 0;

 write_lock_bh(&atalk_interfaces_lock);
 iface->next = atalk_interfaces;
 atalk_interfaces = iface;
 write_unlock_bh(&atalk_interfaces_lock);
out:
 return iface;
}
