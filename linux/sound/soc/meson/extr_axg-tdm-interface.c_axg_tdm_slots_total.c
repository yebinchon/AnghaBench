
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int AXG_TDM_NUM_LANES ;
 scalar_t__ hweight32 (int ) ;

__attribute__((used)) static unsigned int axg_tdm_slots_total(u32 *mask)
{
 unsigned int slots = 0;
 int i;

 if (!mask)
  return 0;


 for (i = 0; i < AXG_TDM_NUM_LANES; i++)
  slots += hweight32(mask[i]);

 return slots;
}
