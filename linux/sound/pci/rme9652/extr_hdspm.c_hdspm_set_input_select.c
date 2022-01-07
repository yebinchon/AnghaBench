
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdspm {int control_register; } ;


 int HDSPM_InputSelect0 ;
 int HDSPM_controlRegister ;
 int hdspm_write (struct hdspm*,int ,int ) ;

__attribute__((used)) static int hdspm_set_input_select(struct hdspm * hdspm, int out)
{
 if (out)
  hdspm->control_register |= HDSPM_InputSelect0;
 else
  hdspm->control_register &= ~HDSPM_InputSelect0;
 hdspm_write(hdspm, HDSPM_controlRegister, hdspm->control_register);

 return 0;
}
