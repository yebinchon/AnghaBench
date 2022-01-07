
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dg00x {int unit; int mutex; int card; scalar_t__ registered; int dwork; } ;
struct fw_unit {int device; } ;


 int cancel_delayed_work_sync (int *) ;
 struct snd_dg00x* dev_get_drvdata (int *) ;
 int fw_unit_put (int ) ;
 int mutex_destroy (int *) ;
 int snd_card_free (int ) ;

__attribute__((used)) static void snd_dg00x_remove(struct fw_unit *unit)
{
 struct snd_dg00x *dg00x = dev_get_drvdata(&unit->device);






 cancel_delayed_work_sync(&dg00x->dwork);

 if (dg00x->registered) {

  snd_card_free(dg00x->card);
 }

 mutex_destroy(&dg00x->mutex);
 fw_unit_put(dg00x->unit);
}
