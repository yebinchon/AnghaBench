
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_bebob {int unit; int mutex; int card; scalar_t__ registered; int dwork; } ;
struct fw_unit {int device; } ;


 int cancel_delayed_work_sync (int *) ;
 struct snd_bebob* dev_get_drvdata (int *) ;
 int fw_unit_put (int ) ;
 int mutex_destroy (int *) ;
 int snd_card_free (int ) ;

__attribute__((used)) static void bebob_remove(struct fw_unit *unit)
{
 struct snd_bebob *bebob = dev_get_drvdata(&unit->device);

 if (bebob == ((void*)0))
  return;






 cancel_delayed_work_sync(&bebob->dwork);

 if (bebob->registered) {

  snd_card_free(bebob->card);
 }

 mutex_destroy(&bebob->mutex);
 fw_unit_put(bebob->unit);
}
