
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hdsp {int control_register; } ;


 int HDSP_controlRegister ;
 int hdsp_write (struct hdsp*,int ,int ) ;

__attribute__((used)) static int hdsp_set_toggle_setting(struct hdsp *hdsp, u32 regmask, int out)
{
 if (out)
  hdsp->control_register |= regmask;
 else
  hdsp->control_register &= ~regmask;
 hdsp_write(hdsp, HDSP_controlRegister, hdsp->control_register);

 return 0;
}
