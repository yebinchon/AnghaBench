
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dg00x {int mutex; scalar_t__ registered; int dwork; } ;
struct fw_unit {int device; } ;


 struct snd_dg00x* dev_get_drvdata (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_dg00x_stream_update_duplex (struct snd_dg00x*) ;
 int snd_dg00x_transaction_reregister (struct snd_dg00x*) ;
 int snd_fw_schedule_registration (struct fw_unit*,int *) ;

__attribute__((used)) static void snd_dg00x_update(struct fw_unit *unit)
{
 struct snd_dg00x *dg00x = dev_get_drvdata(&unit->device);


 if (!dg00x->registered)
  snd_fw_schedule_registration(unit, &dg00x->dwork);

 snd_dg00x_transaction_reregister(dg00x);





 if (dg00x->registered) {
  mutex_lock(&dg00x->mutex);
  snd_dg00x_stream_update_duplex(dg00x);
  mutex_unlock(&dg00x->mutex);
 }
}
