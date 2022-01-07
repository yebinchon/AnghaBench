
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum adau1373_micbias_voltage { ____Placeholder_adau1373_micbias_voltage } adau1373_micbias_voltage ;







__attribute__((used)) static bool adau1373_valid_micbias(enum adau1373_micbias_voltage micbias)
{
 switch (micbias) {
 case 128:
 case 130:
 case 129:
 case 131:
  return 1;
 default:
  break;
 }
 return 0;
}
