
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_motu {int unit; int mutex; int card; scalar_t__ registered; int dwork; } ;
struct fw_unit {int device; } ;


 int cancel_delayed_work_sync (int *) ;
 struct snd_motu* dev_get_drvdata (int *) ;
 int fw_unit_put (int ) ;
 int mutex_destroy (int *) ;
 int snd_card_free (int ) ;

__attribute__((used)) static void motu_remove(struct fw_unit *unit)
{
 struct snd_motu *motu = dev_get_drvdata(&unit->device);






 cancel_delayed_work_sync(&motu->dwork);

 if (motu->registered) {

  snd_card_free(motu->card);
 }

 mutex_destroy(&motu->mutex);
 fw_unit_put(motu->unit);
}
