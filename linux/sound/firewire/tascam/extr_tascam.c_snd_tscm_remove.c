
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_tscm {int unit; int mutex; int card; scalar_t__ registered; int dwork; } ;
struct fw_unit {int device; } ;


 int cancel_delayed_work_sync (int *) ;
 struct snd_tscm* dev_get_drvdata (int *) ;
 int fw_unit_put (int ) ;
 int mutex_destroy (int *) ;
 int snd_card_free (int ) ;

__attribute__((used)) static void snd_tscm_remove(struct fw_unit *unit)
{
 struct snd_tscm *tscm = dev_get_drvdata(&unit->device);






 cancel_delayed_work_sync(&tscm->dwork);

 if (tscm->registered) {

  snd_card_free(tscm->card);
 }

 mutex_destroy(&tscm->mutex);
 fw_unit_put(tscm->unit);
}
