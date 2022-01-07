
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs42l42_private {int* bias_thresholds; char plug_state; int regmap; int hs_type; } ;


 int CS42L42_EVENT_STAT_SEL_MASK ;
 int CS42L42_EVENT_STAT_SEL_SHIFT ;
 int CS42L42_HS_CLAMP_DISABLE ;
 int CS42L42_HS_CLAMP_DISABLE_MASK ;
 int CS42L42_HS_CLAMP_DISABLE_SHIFT ;
 int CS42L42_HS_DET_LEVEL_MASK ;
 int CS42L42_HS_DET_LEVEL_SHIFT ;
 int CS42L42_LATCH_TO_VP_MASK ;
 int CS42L42_LATCH_TO_VP_SHIFT ;
 int CS42L42_MIC_DET_CTL1 ;
 int CS42L42_PLUG_INVALID ;
 int CS42L42_TIPSENSE_CTL ;
 int CS42L42_TIP_SENSE_CTRL_MASK ;
 int CS42L42_TIP_SENSE_CTRL_SHIFT ;
 int CS42L42_TIP_SENSE_DEBOUNCE_MASK ;
 int CS42L42_TIP_SENSE_DEBOUNCE_SHIFT ;
 int CS42L42_TIP_SENSE_INV_MASK ;
 int CS42L42_TIP_SENSE_INV_SHIFT ;
 int CS42L42_TSRS_PLUG_STATUS ;
 char CS42L42_TS_PLUG_MASK ;
 char CS42L42_TS_PLUG_SHIFT ;
 char CS42L42_TS_UNPLUG_MASK ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static void cs42l42_setup_hs_type_detect(struct cs42l42_private *cs42l42)
{
 unsigned int reg;

 cs42l42->hs_type = CS42L42_PLUG_INVALID;


 regmap_update_bits(cs42l42->regmap, CS42L42_MIC_DET_CTL1,
   CS42L42_LATCH_TO_VP_MASK |
   CS42L42_EVENT_STAT_SEL_MASK |
   CS42L42_HS_DET_LEVEL_MASK,
   (1 << CS42L42_LATCH_TO_VP_SHIFT) |
   (0 << CS42L42_EVENT_STAT_SEL_SHIFT) |
   (cs42l42->bias_thresholds[0] <<
   CS42L42_HS_DET_LEVEL_SHIFT));


 regmap_update_bits(cs42l42->regmap,
   CS42L42_HS_CLAMP_DISABLE,
   CS42L42_HS_CLAMP_DISABLE_MASK,
   (1 << CS42L42_HS_CLAMP_DISABLE_SHIFT));


 regmap_update_bits(cs42l42->regmap, CS42L42_TIPSENSE_CTL,
   CS42L42_TIP_SENSE_CTRL_MASK |
   CS42L42_TIP_SENSE_INV_MASK |
   CS42L42_TIP_SENSE_DEBOUNCE_MASK,
   (3 << CS42L42_TIP_SENSE_CTRL_SHIFT) |
   (0 << CS42L42_TIP_SENSE_INV_SHIFT) |
   (2 << CS42L42_TIP_SENSE_DEBOUNCE_SHIFT));


 regmap_read(cs42l42->regmap,
     CS42L42_TSRS_PLUG_STATUS,
     &reg);
 cs42l42->plug_state = (((char) reg) &
        (CS42L42_TS_PLUG_MASK | CS42L42_TS_UNPLUG_MASK)) >>
        CS42L42_TS_PLUG_SHIFT;
}
