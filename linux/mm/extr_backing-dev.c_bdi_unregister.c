
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backing_dev_info {int * owner; int * dev; int wb; } ;


 int bdi_debug_unregister (struct backing_dev_info*) ;
 int bdi_remove_from_list (struct backing_dev_info*) ;
 int cgwb_bdi_unregister (struct backing_dev_info*) ;
 int device_unregister (int *) ;
 int put_device (int *) ;
 int wb_shutdown (int *) ;

void bdi_unregister(struct backing_dev_info *bdi)
{

 bdi_remove_from_list(bdi);
 wb_shutdown(&bdi->wb);
 cgwb_bdi_unregister(bdi);

 if (bdi->dev) {
  bdi_debug_unregister(bdi);
  device_unregister(bdi->dev);
  bdi->dev = ((void*)0);
 }

 if (bdi->owner) {
  put_device(bdi->owner);
  bdi->owner = ((void*)0);
 }
}
