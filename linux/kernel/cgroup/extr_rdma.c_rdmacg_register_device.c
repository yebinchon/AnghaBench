
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdmacg_device {int dev_node; int rpools; } ;


 int INIT_LIST_HEAD (int *) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rdmacg_devices ;
 int rdmacg_mutex ;

void rdmacg_register_device(struct rdmacg_device *device)
{
 INIT_LIST_HEAD(&device->dev_node);
 INIT_LIST_HEAD(&device->rpools);

 mutex_lock(&rdmacg_mutex);
 list_add_tail(&device->dev_node, &rdmacg_devices);
 mutex_unlock(&rdmacg_mutex);
}
