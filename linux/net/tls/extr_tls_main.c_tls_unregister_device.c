
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_device {int dev_list; } ;


 int device_spinlock ;
 int list_del (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void tls_unregister_device(struct tls_device *device)
{
 spin_lock_bh(&device_spinlock);
 list_del(&device->dev_list);
 spin_unlock_bh(&device_spinlock);
}
