
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_bebob {int unit; int dwork; int registered; } ;
struct fw_unit {int device; } ;


 struct snd_bebob* dev_get_drvdata (int *) ;
 int fcp_bus_reset (int ) ;
 int snd_fw_schedule_registration (struct fw_unit*,int *) ;

__attribute__((used)) static void
bebob_update(struct fw_unit *unit)
{
 struct snd_bebob *bebob = dev_get_drvdata(&unit->device);

 if (bebob == ((void*)0))
  return;


 if (!bebob->registered)
  snd_fw_schedule_registration(unit, &bebob->dwork);
 else
  fcp_bus_reset(bebob->unit);
}
