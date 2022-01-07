
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdsp {int control_register; } ;


 int HDSP_RPM_Bypass ;
 int HDSP_controlRegister ;
 int hdsp_write (struct hdsp*,int ,int ) ;

__attribute__((used)) static int hdsp_set_rpm_bypass(struct hdsp *hdsp, int on)
{
 if (on)
  hdsp->control_register |= HDSP_RPM_Bypass;
 else
  hdsp->control_register &= ~HDSP_RPM_Bypass;
 hdsp_write(hdsp, HDSP_controlRegister, hdsp->control_register);
 return 0;
}
