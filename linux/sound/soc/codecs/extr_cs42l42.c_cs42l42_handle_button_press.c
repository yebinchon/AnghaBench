
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cs42l42_private {int btn_det_event_dbnce; int* bias_thresholds; int regmap; TYPE_1__* component; } ;
struct TYPE_2__ {int dev; } ;


 int CS42L42_DET_INT2_MASK ;
 int CS42L42_DET_INT_STATUS2 ;
 int CS42L42_DET_STATUS2 ;
 int CS42L42_EVENT_STAT_SEL_MASK ;
 int CS42L42_EVENT_STAT_SEL_SHIFT ;
 int CS42L42_HS_DET_LEVEL_MASK ;
 int CS42L42_HS_DET_LEVEL_SHIFT ;
 unsigned int CS42L42_HS_TRUE_MASK ;
 int CS42L42_LATCH_TO_VP_MASK ;
 int CS42L42_LATCH_TO_VP_SHIFT ;
 int CS42L42_MIC_DET_CTL1 ;
 int CS42L42_M_DETECT_FT_MASK ;
 int CS42L42_M_DETECT_FT_SHIFT ;
 int CS42L42_M_DETECT_TF_MASK ;
 int CS42L42_M_DETECT_TF_SHIFT ;
 int CS42L42_M_HSBIAS_HIZ_MASK ;
 int CS42L42_M_HSBIAS_HIZ_SHIFT ;
 int CS42L42_M_SHORT_DET_MASK ;
 int CS42L42_M_SHORT_DET_SHIFT ;
 int CS42L42_M_SHORT_RLS_MASK ;
 int CS42L42_M_SHORT_RLS_SHIFT ;
 int CS42L42_NUM_BIASES ;
 int dev_dbg (int ,char*) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void cs42l42_handle_button_press(struct cs42l42_private *cs42l42)
{
 int bias_level;
 unsigned int detect_status;


 regmap_update_bits(cs42l42->regmap,
  CS42L42_DET_INT2_MASK,
  CS42L42_M_DETECT_TF_MASK |
  CS42L42_M_DETECT_FT_MASK |
  CS42L42_M_HSBIAS_HIZ_MASK |
  CS42L42_M_SHORT_RLS_MASK |
  CS42L42_M_SHORT_DET_MASK,
  (1 << CS42L42_M_DETECT_TF_SHIFT) |
  (1 << CS42L42_M_DETECT_FT_SHIFT) |
  (1 << CS42L42_M_HSBIAS_HIZ_SHIFT) |
  (1 << CS42L42_M_SHORT_RLS_SHIFT) |
  (1 << CS42L42_M_SHORT_DET_SHIFT));

 usleep_range(cs42l42->btn_det_event_dbnce * 1000,
       cs42l42->btn_det_event_dbnce * 2000);


 bias_level = 1;
 do {

  regmap_update_bits(cs42l42->regmap,
   CS42L42_MIC_DET_CTL1,
   CS42L42_LATCH_TO_VP_MASK |
   CS42L42_EVENT_STAT_SEL_MASK |
   CS42L42_HS_DET_LEVEL_MASK,
   (1 << CS42L42_LATCH_TO_VP_SHIFT) |
   (0 << CS42L42_EVENT_STAT_SEL_SHIFT) |
   (cs42l42->bias_thresholds[bias_level] <<
   CS42L42_HS_DET_LEVEL_SHIFT));

  regmap_read(cs42l42->regmap, CS42L42_DET_STATUS2,
    &detect_status);
 } while ((detect_status & CS42L42_HS_TRUE_MASK) &&
  (++bias_level < CS42L42_NUM_BIASES));

 switch (bias_level) {
 case 1:
  dev_dbg(cs42l42->component->dev, "Function C button press\n");
  break;
 case 2:
  dev_dbg(cs42l42->component->dev, "Function B button press\n");
  break;
 case 3:
  dev_dbg(cs42l42->component->dev, "Function D button press\n");
  break;
 case 4:
  dev_dbg(cs42l42->component->dev, "Function A button press\n");
  break;
 }


 regmap_update_bits(cs42l42->regmap,
  CS42L42_MIC_DET_CTL1,
  CS42L42_LATCH_TO_VP_MASK |
  CS42L42_EVENT_STAT_SEL_MASK |
  CS42L42_HS_DET_LEVEL_MASK,
  (1 << CS42L42_LATCH_TO_VP_SHIFT) |
  (0 << CS42L42_EVENT_STAT_SEL_SHIFT) |
  (cs42l42->bias_thresholds[0] << CS42L42_HS_DET_LEVEL_SHIFT));


 regmap_read(cs42l42->regmap, CS42L42_DET_INT_STATUS2,
      &detect_status);


 regmap_update_bits(cs42l42->regmap,
  CS42L42_DET_INT2_MASK,
  CS42L42_M_DETECT_TF_MASK |
  CS42L42_M_DETECT_FT_MASK |
  CS42L42_M_HSBIAS_HIZ_MASK |
  CS42L42_M_SHORT_RLS_MASK |
  CS42L42_M_SHORT_DET_MASK,
  (0 << CS42L42_M_DETECT_TF_SHIFT) |
  (0 << CS42L42_M_DETECT_FT_SHIFT) |
  (0 << CS42L42_M_HSBIAS_HIZ_SHIFT) |
  (1 << CS42L42_M_SHORT_RLS_SHIFT) |
  (1 << CS42L42_M_SHORT_DET_SHIFT));
}
