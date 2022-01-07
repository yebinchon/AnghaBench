
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdspm {int control_register; } ;


 int HDSPM_DS_DoubleWire ;
 int HDSPM_controlRegister ;
 int hdspm_write (struct hdspm*,int ,int ) ;

__attribute__((used)) static int hdspm_set_ds_wire(struct hdspm * hdspm, int ds)
{
 if (ds)
  hdspm->control_register |= HDSPM_DS_DoubleWire;
 else
  hdspm->control_register &= ~HDSPM_DS_DoubleWire;
 hdspm_write(hdspm, HDSPM_controlRegister, hdspm->control_register);

 return 0;
}
