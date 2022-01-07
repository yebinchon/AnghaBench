
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdspm {int control_register; } ;


 int HDSPM_QS_DoubleWire ;
 int HDSPM_QS_QuadWire ;
 int HDSPM_controlRegister ;
 int hdspm_write (struct hdspm*,int ,int) ;

__attribute__((used)) static int hdspm_set_qs_wire(struct hdspm * hdspm, int mode)
{
 hdspm->control_register &= ~(HDSPM_QS_DoubleWire | HDSPM_QS_QuadWire);
 switch (mode) {
 case 0:
  break;
 case 1:
  hdspm->control_register |= HDSPM_QS_DoubleWire;
  break;
 case 2:
  hdspm->control_register |= HDSPM_QS_QuadWire;
  break;
 }
 hdspm_write(hdspm, HDSPM_controlRegister, hdspm->control_register);

 return 0;
}
