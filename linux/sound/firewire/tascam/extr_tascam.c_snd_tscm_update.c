
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_tscm {int mutex; scalar_t__ registered; int dwork; } ;
struct fw_unit {int device; } ;


 struct snd_tscm* dev_get_drvdata (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_fw_schedule_registration (struct fw_unit*,int *) ;
 int snd_tscm_stream_update_duplex (struct snd_tscm*) ;
 int snd_tscm_transaction_reregister (struct snd_tscm*) ;

__attribute__((used)) static void snd_tscm_update(struct fw_unit *unit)
{
 struct snd_tscm *tscm = dev_get_drvdata(&unit->device);


 if (!tscm->registered)
  snd_fw_schedule_registration(unit, &tscm->dwork);

 snd_tscm_transaction_reregister(tscm);





 if (tscm->registered) {
  mutex_lock(&tscm->mutex);
  snd_tscm_stream_update_duplex(tscm);
  mutex_unlock(&tscm->mutex);
 }
}
