
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adau {int type; } ;





__attribute__((used)) static bool adau17x1_has_safeload(struct adau *adau)
{
 switch (adau->type) {
 case 129:
 case 128:
  return 1;
 default:
  return 0;
 }
}
