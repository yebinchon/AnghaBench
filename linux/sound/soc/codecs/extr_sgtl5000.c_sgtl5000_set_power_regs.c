
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct snd_soc_component {int dev; } ;
struct sgtl5000_priv {size_t num_supplies; TYPE_1__* supplies; } ;
struct TYPE_2__ {int consumer; } ;


 size_t ARRAY_SIZE (int*) ;
 int EINVAL ;
 int LDO_VOLTAGE ;
 int SGTL5000_ADC_STEREO ;
 int SGTL5000_ANA_GND_BASE ;
 int SGTL5000_ANA_GND_MASK ;
 int SGTL5000_ANA_GND_SHIFT ;
 int SGTL5000_ANA_GND_STP ;
 int SGTL5000_CHIP_ANA_POWER ;
 int SGTL5000_CHIP_CLK_TOP_CTRL ;
 int SGTL5000_CHIP_LINE_OUT_CTRL ;
 int SGTL5000_CHIP_LINE_OUT_VOL ;
 int SGTL5000_CHIP_LINREG_CTRL ;
 int SGTL5000_CHIP_REF_CTRL ;
 int SGTL5000_DAC_STEREO ;
 int SGTL5000_INT_OSC_EN ;
 int SGTL5000_LINE_OUT_CURRENT_360u ;
 int SGTL5000_LINE_OUT_CURRENT_MASK ;
 int SGTL5000_LINE_OUT_CURRENT_SHIFT ;
 int SGTL5000_LINE_OUT_GND_BASE ;
 int SGTL5000_LINE_OUT_GND_MASK ;
 int SGTL5000_LINE_OUT_GND_MAX ;
 int SGTL5000_LINE_OUT_GND_SHIFT ;
 int SGTL5000_LINE_OUT_GND_STP ;
 int SGTL5000_LINE_OUT_VOL_LEFT_MASK ;
 int SGTL5000_LINE_OUT_VOL_LEFT_SHIFT ;
 int SGTL5000_LINE_OUT_VOL_RIGHT_MASK ;
 int SGTL5000_LINE_OUT_VOL_RIGHT_SHIFT ;
 int SGTL5000_REFTOP_POWERUP ;
 int SGTL5000_VDDC_ASSN_OVRD ;
 int SGTL5000_VDDC_CHRGPMP_POWERUP ;
 int SGTL5000_VDDC_MAN_ASSN_SHIFT ;
 int SGTL5000_VDDC_MAN_ASSN_VDDIO ;
 size_t VDDA ;
 size_t VDDD ;
 size_t VDDIO ;
 int dev_err (int ,char*,...) ;
 int regulator_get_voltage (int ) ;
 struct sgtl5000_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;
 int* vol_quot_table ;

__attribute__((used)) static int sgtl5000_set_power_regs(struct snd_soc_component *component)
{
 int vddd;
 int vdda;
 int vddio;
 u16 ana_pwr;
 u16 lreg_ctrl;
 int vag;
 int lo_vag;
 int vol_quot;
 int lo_vol;
 size_t i;
 struct sgtl5000_priv *sgtl5000 = snd_soc_component_get_drvdata(component);

 vdda = regulator_get_voltage(sgtl5000->supplies[VDDA].consumer);
 vddio = regulator_get_voltage(sgtl5000->supplies[VDDIO].consumer);
 vddd = (sgtl5000->num_supplies > VDDD)
  ? regulator_get_voltage(sgtl5000->supplies[VDDD].consumer)
  : LDO_VOLTAGE;

 vdda = vdda / 1000;
 vddio = vddio / 1000;
 vddd = vddd / 1000;

 if (vdda <= 0 || vddio <= 0 || vddd < 0) {
  dev_err(component->dev, "regulator voltage not set correctly\n");

  return -EINVAL;
 }


 if (vdda > 3600 || vddio > 3600 || vddd > 1980) {
  dev_err(component->dev,
   "exceed max voltage vdda %dmV vddio %dmV vddd %dmV\n",
   vdda, vddio, vddd);

  return -EINVAL;
 }


 ana_pwr = snd_soc_component_read32(component, SGTL5000_CHIP_ANA_POWER);
 ana_pwr |= SGTL5000_DAC_STEREO |
   SGTL5000_ADC_STEREO |
   SGTL5000_REFTOP_POWERUP;
 lreg_ctrl = snd_soc_component_read32(component, SGTL5000_CHIP_LINREG_CTRL);

 if (vddio < 3100 && vdda < 3100) {

  snd_soc_component_update_bits(component, SGTL5000_CHIP_CLK_TOP_CTRL,
     SGTL5000_INT_OSC_EN,
     SGTL5000_INT_OSC_EN);

  ana_pwr |= SGTL5000_VDDC_CHRGPMP_POWERUP;
 } else {
  ana_pwr &= ~SGTL5000_VDDC_CHRGPMP_POWERUP;




  if (vddio == vdda) {
   lreg_ctrl |= SGTL5000_VDDC_ASSN_OVRD;
   lreg_ctrl |= SGTL5000_VDDC_MAN_ASSN_VDDIO <<
        SGTL5000_VDDC_MAN_ASSN_SHIFT;
  }
 }

 snd_soc_component_write(component, SGTL5000_CHIP_LINREG_CTRL, lreg_ctrl);

 snd_soc_component_write(component, SGTL5000_CHIP_ANA_POWER, ana_pwr);





 vag = vdda / 2;
 if (vag <= SGTL5000_ANA_GND_BASE)
  vag = 0;
 else if (vag >= SGTL5000_ANA_GND_BASE + SGTL5000_ANA_GND_STP *
   (SGTL5000_ANA_GND_MASK >> SGTL5000_ANA_GND_SHIFT))
  vag = SGTL5000_ANA_GND_MASK >> SGTL5000_ANA_GND_SHIFT;
 else
  vag = (vag - SGTL5000_ANA_GND_BASE) / SGTL5000_ANA_GND_STP;

 snd_soc_component_update_bits(component, SGTL5000_CHIP_REF_CTRL,
   SGTL5000_ANA_GND_MASK, vag << SGTL5000_ANA_GND_SHIFT);


 lo_vag = vddio / 2;
 if (lo_vag <= SGTL5000_LINE_OUT_GND_BASE)
  lo_vag = 0;
 else if (lo_vag >= SGTL5000_LINE_OUT_GND_BASE +
  SGTL5000_LINE_OUT_GND_STP * SGTL5000_LINE_OUT_GND_MAX)
  lo_vag = SGTL5000_LINE_OUT_GND_MAX;
 else
  lo_vag = (lo_vag - SGTL5000_LINE_OUT_GND_BASE) /
      SGTL5000_LINE_OUT_GND_STP;

 snd_soc_component_update_bits(component, SGTL5000_CHIP_LINE_OUT_CTRL,
   SGTL5000_LINE_OUT_CURRENT_MASK |
   SGTL5000_LINE_OUT_GND_MASK,
   lo_vag << SGTL5000_LINE_OUT_GND_SHIFT |
   SGTL5000_LINE_OUT_CURRENT_360u <<
    SGTL5000_LINE_OUT_CURRENT_SHIFT);
 vol_quot = lo_vag ? (vag * 100) / lo_vag : 0;
 lo_vol = 0;
 for (i = 0; i < ARRAY_SIZE(vol_quot_table); i++) {
  if (vol_quot >= vol_quot_table[i])
   lo_vol = i;
  else
   break;
 }

 snd_soc_component_update_bits(component, SGTL5000_CHIP_LINE_OUT_VOL,
  SGTL5000_LINE_OUT_VOL_RIGHT_MASK |
  SGTL5000_LINE_OUT_VOL_LEFT_MASK,
  lo_vol << SGTL5000_LINE_OUT_VOL_RIGHT_SHIFT |
  lo_vol << SGTL5000_LINE_OUT_VOL_LEFT_SHIFT);

 return 0;
}
