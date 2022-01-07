
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int INTEL_FAM6_ATOM_GOLDMONT_D ;



 unsigned int INTEL_FAM6_CANNONLAKE_L ;
 unsigned int INTEL_FAM6_XEON_PHI_KNL ;


unsigned int intel_model_duplicates(unsigned int model)
{

 switch(model) {
 case 135:
 case 136:
 case 0x1F:
 case 131:
 case 130:
  return 136;

 case 134:
 case 129:
  return 134;

 case 128:
  return INTEL_FAM6_XEON_PHI_KNL;

 case 141:
 case 142:
  return 141;

 case 132:
 case 133:
 case 137:
 case 138:
  return 132;

 case 140:
 case 139:
  return INTEL_FAM6_CANNONLAKE_L;

 case 143:
  return INTEL_FAM6_ATOM_GOLDMONT_D;
 }
 return model;
}
