
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdspm {int control_register; } ;


 int HDSPM_DoubleSpeed ;
 int HDSPM_QuadSpeed ;
 int HDSPM_controlRegister ;
 int hdspm_write (struct hdspm*,int ,int) ;

__attribute__((used)) static int hdspm_set_madi_speedmode(struct hdspm *hdspm, int mode)
{
 hdspm->control_register &= ~(HDSPM_DoubleSpeed | HDSPM_QuadSpeed);
 switch (mode) {
 case 0:
  break;
 case 1:
  hdspm->control_register |= HDSPM_DoubleSpeed;
  break;
 case 2:
  hdspm->control_register |= HDSPM_QuadSpeed;
  break;
 }
 hdspm_write(hdspm, HDSPM_controlRegister, hdspm->control_register);

 return 0;
}
