
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_motu {int dwork; int registered; } ;
struct fw_unit {int device; } ;


 struct snd_motu* dev_get_drvdata (int *) ;
 int snd_fw_schedule_registration (struct fw_unit*,int *) ;
 int snd_motu_transaction_reregister (struct snd_motu*) ;

__attribute__((used)) static void motu_bus_update(struct fw_unit *unit)
{
 struct snd_motu *motu = dev_get_drvdata(&unit->device);


 if (!motu->registered)
  snd_fw_schedule_registration(unit, &motu->dwork);


 snd_motu_transaction_reregister(motu);
}
