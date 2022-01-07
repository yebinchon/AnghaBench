
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_device {int dev_list; } ;


 int device_list ;
 int device_spinlock ;
 int list_add_tail (int *,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void tls_register_device(struct tls_device *device)
{
 spin_lock_bh(&device_spinlock);
 list_add_tail(&device->dev_list, &device_list);
 spin_unlock_bh(&device_spinlock);
}
