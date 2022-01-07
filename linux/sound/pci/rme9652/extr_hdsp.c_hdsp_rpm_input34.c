
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdsp {int control_register; } ;


 int HDSP_RPM_Inp34 ;





__attribute__((used)) static int hdsp_rpm_input34(struct hdsp *hdsp)
{
 switch (hdsp->control_register & HDSP_RPM_Inp34) {
 case 129:
  return 0;
 case 128:
  return 2;
 case 131:
  return 3;
 case 130:
  return 4;
 }
 return 1;
}
