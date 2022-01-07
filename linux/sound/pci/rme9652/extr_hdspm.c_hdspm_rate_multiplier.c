
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdspm {int control_register; } ;


 int HDSPM_DoubleSpeed ;
 int HDSPM_QuadSpeed ;

__attribute__((used)) static int hdspm_rate_multiplier(struct hdspm *hdspm, int rate)
{
 if (rate <= 48000) {
  if (hdspm->control_register & HDSPM_QuadSpeed)
   return rate * 4;
  else if (hdspm->control_register &
    HDSPM_DoubleSpeed)
   return rate * 2;
 }
 return rate;
}
