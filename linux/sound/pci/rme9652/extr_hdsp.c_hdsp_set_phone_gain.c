
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdsp {int control_register; } ;


 int HDSP_PhoneGain0dB ;
 int HDSP_PhoneGainMask ;
 int HDSP_PhoneGainMinus12dB ;
 int HDSP_PhoneGainMinus6dB ;
 int HDSP_controlRegister ;
 int hdsp_write (struct hdsp*,int ,int ) ;

__attribute__((used)) static int hdsp_set_phone_gain(struct hdsp *hdsp, int mode)
{
 hdsp->control_register &= ~HDSP_PhoneGainMask;
 switch (mode) {
 case 0:
  hdsp->control_register |= HDSP_PhoneGain0dB;
  break;
 case 1:
  hdsp->control_register |= HDSP_PhoneGainMinus6dB;
  break;
 case 2:
  hdsp->control_register |= HDSP_PhoneGainMinus12dB;
  break;
 default:
  return -1;

 }
 hdsp_write(hdsp, HDSP_controlRegister, hdsp->control_register);
 return 0;
}
