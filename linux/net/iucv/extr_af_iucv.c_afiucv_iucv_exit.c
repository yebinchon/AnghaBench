
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* iucv_unregister ) (int *,int ) ;} ;


 int af_iucv_dev ;
 int af_iucv_driver ;
 int af_iucv_handler ;
 int device_unregister (int ) ;
 int driver_unregister (int *) ;
 TYPE_1__* pr_iucv ;
 int stub1 (int *,int ) ;

__attribute__((used)) static void afiucv_iucv_exit(void)
{
 device_unregister(af_iucv_dev);
 driver_unregister(&af_iucv_driver);
 pr_iucv->iucv_unregister(&af_iucv_handler, 0);
}
