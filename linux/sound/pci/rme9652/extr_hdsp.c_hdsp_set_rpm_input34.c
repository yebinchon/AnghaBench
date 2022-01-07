
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdsp {int control_register; } ;


 int HDSP_RPM_Inp34 ;
 int HDSP_RPM_Inp34_Line_0dB ;
 int HDSP_RPM_Inp34_Line_n6dB ;
 int HDSP_RPM_Inp34_Phon_6dB ;
 int HDSP_RPM_Inp34_Phon_n6dB ;
 int HDSP_controlRegister ;
 int hdsp_write (struct hdsp*,int ,int ) ;

__attribute__((used)) static int hdsp_set_rpm_input34(struct hdsp *hdsp, int mode)
{
 hdsp->control_register &= ~HDSP_RPM_Inp34;
 switch (mode) {
 case 0:
  hdsp->control_register |= HDSP_RPM_Inp34_Phon_6dB;
  break;
 case 1:
  break;
 case 2:
  hdsp->control_register |= HDSP_RPM_Inp34_Phon_n6dB;
  break;
 case 3:
  hdsp->control_register |= HDSP_RPM_Inp34_Line_0dB;
  break;
 case 4:
  hdsp->control_register |= HDSP_RPM_Inp34_Line_n6dB;
  break;
 default:
  return -1;
 }

 hdsp_write(hdsp, HDSP_controlRegister, hdsp->control_register);
 return 0;
}
