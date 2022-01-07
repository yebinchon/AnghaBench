
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum vmpressure_levels { ____Placeholder_vmpressure_levels } vmpressure_levels ;


 int VMPRESSURE_CRITICAL ;
 int VMPRESSURE_LOW ;
 int VMPRESSURE_MEDIUM ;
 unsigned long vmpressure_level_critical ;
 unsigned long vmpressure_level_med ;

__attribute__((used)) static enum vmpressure_levels vmpressure_level(unsigned long pressure)
{
 if (pressure >= vmpressure_level_critical)
  return VMPRESSURE_CRITICAL;
 else if (pressure >= vmpressure_level_med)
  return VMPRESSURE_MEDIUM;
 return VMPRESSURE_LOW;
}
