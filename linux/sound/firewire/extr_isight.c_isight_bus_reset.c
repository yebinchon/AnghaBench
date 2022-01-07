
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isight {int mutex; int resources; } ;
struct fw_unit {int device; } ;


 struct isight* dev_get_drvdata (int *) ;
 scalar_t__ fw_iso_resources_update (int *) ;
 int isight_pcm_abort (struct isight*) ;
 int isight_stop_streaming (struct isight*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void isight_bus_reset(struct fw_unit *unit)
{
 struct isight *isight = dev_get_drvdata(&unit->device);

 if (fw_iso_resources_update(&isight->resources) < 0) {
  isight_pcm_abort(isight);

  mutex_lock(&isight->mutex);
  isight_stop_streaming(isight);
  mutex_unlock(&isight->mutex);
 }
}
