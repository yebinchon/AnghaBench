
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdspm {int control_register; } ;


 int HDSPM_DoubleSpeed ;
 int HDSPM_QuadSpeed ;

__attribute__((used)) static int hdspm_madi_speedmode(struct hdspm *hdspm)
{
 if (hdspm->control_register & HDSPM_QuadSpeed)
  return 2;
 if (hdspm->control_register & HDSPM_DoubleSpeed)
  return 1;
 return 0;
}
