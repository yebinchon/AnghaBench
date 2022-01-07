
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct lapb_register_struct {int dummy; } ;
struct lapb_cb {struct lapb_register_struct const* callbacks; struct net_device* dev; } ;


 int LAPB_BADTOKEN ;
 int LAPB_NOMEM ;
 int LAPB_OK ;
 struct lapb_cb* __lapb_devtostruct (struct net_device*) ;
 int __lapb_insert_cb (struct lapb_cb*) ;
 struct lapb_cb* lapb_create_cb () ;
 int lapb_list_lock ;
 int lapb_put (struct lapb_cb*) ;
 int lapb_start_t1timer (struct lapb_cb*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

int lapb_register(struct net_device *dev,
    const struct lapb_register_struct *callbacks)
{
 struct lapb_cb *lapb;
 int rc = LAPB_BADTOKEN;

 write_lock_bh(&lapb_list_lock);

 lapb = __lapb_devtostruct(dev);
 if (lapb) {
  lapb_put(lapb);
  goto out;
 }

 lapb = lapb_create_cb();
 rc = LAPB_NOMEM;
 if (!lapb)
  goto out;

 lapb->dev = dev;
 lapb->callbacks = callbacks;

 __lapb_insert_cb(lapb);

 lapb_start_t1timer(lapb);

 rc = LAPB_OK;
out:
 write_unlock_bh(&lapb_list_lock);
 return rc;
}
