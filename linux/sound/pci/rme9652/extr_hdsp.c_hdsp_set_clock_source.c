
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdsp {int control_register; } ;
 int HDSP_ClockModeMaster ;
 int HDSP_controlRegister ;
 int hdsp_external_sample_rate (struct hdsp*) ;
 int hdsp_set_rate (struct hdsp*,int,int) ;
 int hdsp_write (struct hdsp*,int ,int ) ;

__attribute__((used)) static int hdsp_set_clock_source(struct hdsp *hdsp, int mode)
{
 int rate;
 switch (mode) {
 case 137:
  if (hdsp_external_sample_rate(hdsp) != 0) {
      if (!hdsp_set_rate(hdsp, hdsp_external_sample_rate(hdsp), 1)) {
   hdsp->control_register &= ~HDSP_ClockModeMaster;
   hdsp_write(hdsp, HDSP_controlRegister, hdsp->control_register);
   return 0;
      }
  }
  return -1;
 case 133:
  rate = 32000;
  break;
 case 132:
  rate = 44100;
  break;
 case 131:
  rate = 48000;
  break;
 case 130:
  rate = 64000;
  break;
 case 129:
  rate = 88200;
  break;
 case 128:
  rate = 96000;
  break;
 case 136:
  rate = 128000;
  break;
 case 135:
  rate = 176400;
  break;
 case 134:
  rate = 192000;
  break;
 default:
  rate = 48000;
 }
 hdsp->control_register |= HDSP_ClockModeMaster;
 hdsp_write(hdsp, HDSP_controlRegister, hdsp->control_register);
 hdsp_set_rate(hdsp, rate, 1);
 return 0;
}
