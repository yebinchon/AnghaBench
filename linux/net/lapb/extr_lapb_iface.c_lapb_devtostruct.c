
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct lapb_cb {int dummy; } ;


 struct lapb_cb* __lapb_devtostruct (struct net_device*) ;
 int lapb_list_lock ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;

__attribute__((used)) static struct lapb_cb *lapb_devtostruct(struct net_device *dev)
{
 struct lapb_cb *rc;

 read_lock_bh(&lapb_list_lock);
 rc = __lapb_devtostruct(dev);
 read_unlock_bh(&lapb_list_lock);

 return rc;
}
