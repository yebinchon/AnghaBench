
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hdsp {int control_register; } ;



__attribute__((used)) static int hdsp_toggle_setting(struct hdsp *hdsp, u32 regmask)
{
 return (hdsp->control_register & regmask) ? 1 : 0;
}
