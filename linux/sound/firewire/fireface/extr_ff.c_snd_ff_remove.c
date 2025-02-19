
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int work; } ;
struct snd_ff {int unit; int mutex; int card; scalar_t__ registered; TYPE_1__ dwork; } ;
struct fw_unit {int device; } ;


 int cancel_work_sync (int *) ;
 struct snd_ff* dev_get_drvdata (int *) ;
 int fw_unit_put (int ) ;
 int mutex_destroy (int *) ;
 int snd_card_free (int ) ;

__attribute__((used)) static void snd_ff_remove(struct fw_unit *unit)
{
 struct snd_ff *ff = dev_get_drvdata(&unit->device);






 cancel_work_sync(&ff->dwork.work);

 if (ff->registered) {

  snd_card_free(ff->card);
 }

 mutex_destroy(&ff->mutex);
 fw_unit_put(ff->unit);
}
