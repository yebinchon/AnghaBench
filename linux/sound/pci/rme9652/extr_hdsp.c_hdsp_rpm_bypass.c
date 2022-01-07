
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdsp {int control_register; } ;


 int HDSP_RPM_Bypass ;

__attribute__((used)) static int hdsp_rpm_bypass(struct hdsp *hdsp)
{
 return (hdsp->control_register & HDSP_RPM_Bypass) ? 1 : 0;
}
