
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ff {scalar_t__ registered; int dwork; } ;
struct fw_unit {int device; } ;


 struct snd_ff* dev_get_drvdata (int *) ;
 int snd_ff_stream_update_duplex (struct snd_ff*) ;
 int snd_ff_transaction_reregister (struct snd_ff*) ;
 int snd_fw_schedule_registration (struct fw_unit*,int *) ;

__attribute__((used)) static void snd_ff_update(struct fw_unit *unit)
{
 struct snd_ff *ff = dev_get_drvdata(&unit->device);


 if (!ff->registered)
  snd_fw_schedule_registration(unit, &ff->dwork);

 snd_ff_transaction_reregister(ff);

 if (ff->registered)
  snd_ff_stream_update_duplex(ff);
}
