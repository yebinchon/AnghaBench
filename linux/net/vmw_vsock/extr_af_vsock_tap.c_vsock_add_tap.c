
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vsock_tap {int list; int module; TYPE_1__* dev; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 scalar_t__ ARPHRD_VSOCKMON ;
 int EINVAL ;
 int __module_get (int ) ;
 int list_add_rcu (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 int vsock_tap_all ;
 int vsock_tap_lock ;

int vsock_add_tap(struct vsock_tap *vt)
{
 if (unlikely(vt->dev->type != ARPHRD_VSOCKMON))
  return -EINVAL;

 __module_get(vt->module);

 spin_lock(&vsock_tap_lock);
 list_add_rcu(&vt->list, &vsock_tap_all);
 spin_unlock(&vsock_tap_lock);

 return 0;
}
