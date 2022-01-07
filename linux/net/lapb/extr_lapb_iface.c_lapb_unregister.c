
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct lapb_cb {int dummy; } ;


 int LAPB_BADTOKEN ;
 int LAPB_OK ;
 struct lapb_cb* __lapb_devtostruct (struct net_device*) ;
 int __lapb_remove_cb (struct lapb_cb*) ;
 int lapb_clear_queues (struct lapb_cb*) ;
 int lapb_list_lock ;
 int lapb_put (struct lapb_cb*) ;
 int lapb_stop_t1timer (struct lapb_cb*) ;
 int lapb_stop_t2timer (struct lapb_cb*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

int lapb_unregister(struct net_device *dev)
{
 struct lapb_cb *lapb;
 int rc = LAPB_BADTOKEN;

 write_lock_bh(&lapb_list_lock);
 lapb = __lapb_devtostruct(dev);
 if (!lapb)
  goto out;
 lapb_put(lapb);

 lapb_stop_t1timer(lapb);
 lapb_stop_t2timer(lapb);

 lapb_clear_queues(lapb);

 __lapb_remove_cb(lapb);

 lapb_put(lapb);
 rc = LAPB_OK;
out:
 write_unlock_bh(&lapb_list_lock);
 return rc;
}
