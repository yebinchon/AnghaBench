
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct da7210_priv {scalar_t__ master; scalar_t__ mclk_rate; } ;


 int DA7210_ADC ;
 int DA7210_ADC_L_EN ;
 int DA7210_ADC_R_EN ;
 int DA7210_AUX1_L ;
 int DA7210_AUX1_L_EN ;
 int DA7210_AUX1_R ;
 int DA7210_AUX1_R_EN ;
 int DA7210_AUX2 ;
 int DA7210_AUX2_EN ;
 int DA7210_BIAS_EN ;
 int DA7210_CONTROL ;
 int DA7210_DAC_L_EN ;
 int DA7210_DAC_L_SRC_DAI_L ;
 int DA7210_DAC_R_EN ;
 int DA7210_DAC_R_SRC_DAI_R ;
 int DA7210_DAC_SEL ;
 int DA7210_HP_2CAP_MODE ;
 int DA7210_HP_CFG ;
 int DA7210_HP_L_EN ;
 int DA7210_HP_MODE ;
 int DA7210_HP_R_EN ;
 int DA7210_HP_SENSE_EN ;
 int DA7210_INMIX_L ;
 int DA7210_INMIX_R ;
 int DA7210_IN_L_EN ;
 int DA7210_IN_R_EN ;
 int DA7210_MCLK_RANGE_10_20_MHZ ;
 int DA7210_MICBIAS_EN ;
 int DA7210_MIC_L ;
 int DA7210_MIC_L_EN ;
 int DA7210_MIC_R ;
 int DA7210_MIC_R_EN ;
 int DA7210_OUT1_L ;
 int DA7210_OUT1_L_EN ;
 int DA7210_OUT1_R ;
 int DA7210_OUT1_R_EN ;
 int DA7210_OUT2 ;
 int DA7210_OUT2_EN ;
 int DA7210_OUT2_OUTMIX_L ;
 int DA7210_OUT2_OUTMIX_R ;
 int DA7210_OUTMIX_L ;
 int DA7210_OUTMIX_R ;
 int DA7210_OUT_L_EN ;
 int DA7210_OUT_R_EN ;
 int DA7210_PLL ;
 int DA7210_PLL_BYP ;
 int DA7210_PLL_DIV3 ;
 int DA7210_PLL_FS_48000 ;
 int DA7210_RAMP_EN ;
 int DA7210_REG_EN ;
 int DA7210_SC_MST_EN ;
 int DA7210_SOFTMUTE ;
 int DA7210_STARTUP1 ;
 int DA7210_VERSION ;
 int dev_info (int ,char*,int ) ;
 struct da7210_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int da7210_probe(struct snd_soc_component *component)
{
 struct da7210_priv *da7210 = snd_soc_component_get_drvdata(component);

 dev_info(component->dev, "DA7210 Audio Codec %s\n", DA7210_VERSION);

 da7210->mclk_rate = 0;
 da7210->master = 0;


 snd_soc_component_write(component, DA7210_CONTROL, DA7210_REG_EN | DA7210_BIAS_EN);






 snd_soc_component_write(component, DA7210_MIC_L, DA7210_MIC_L_EN | DA7210_MICBIAS_EN);
 snd_soc_component_write(component, DA7210_MIC_R, DA7210_MIC_R_EN);


 snd_soc_component_write(component, DA7210_INMIX_L, DA7210_IN_L_EN);
 snd_soc_component_write(component, DA7210_INMIX_R, DA7210_IN_R_EN);


 snd_soc_component_write(component, DA7210_ADC, DA7210_ADC_L_EN | DA7210_ADC_R_EN);






 snd_soc_component_write(component, DA7210_DAC_SEL,
       DA7210_DAC_L_SRC_DAI_L | DA7210_DAC_L_EN |
       DA7210_DAC_R_SRC_DAI_R | DA7210_DAC_R_EN);


 snd_soc_component_write(component, DA7210_OUTMIX_L, DA7210_OUT_L_EN);
 snd_soc_component_write(component, DA7210_OUTMIX_R, DA7210_OUT_R_EN);


 snd_soc_component_write(component, DA7210_HP_CFG,
       DA7210_HP_2CAP_MODE | DA7210_HP_SENSE_EN |
       DA7210_HP_L_EN | DA7210_HP_MODE | DA7210_HP_R_EN);


 snd_soc_component_write(component, DA7210_SOFTMUTE, DA7210_RAMP_EN);
 snd_soc_component_write(component, DA7210_OUT1_L, DA7210_OUT1_L_EN);
 snd_soc_component_write(component, DA7210_OUT1_R, DA7210_OUT1_R_EN);
 snd_soc_component_write(component, DA7210_OUT2, DA7210_OUT2_EN |
       DA7210_OUT2_OUTMIX_L | DA7210_OUT2_OUTMIX_R);


 snd_soc_component_write(component, DA7210_AUX1_L, DA7210_AUX1_L_EN);
 snd_soc_component_write(component, DA7210_AUX1_R, DA7210_AUX1_R_EN);

 snd_soc_component_write(component, DA7210_AUX2, DA7210_AUX2_EN);


 snd_soc_component_write(component, DA7210_PLL_DIV3, DA7210_MCLK_RANGE_10_20_MHZ |
           DA7210_PLL_BYP);


 snd_soc_component_write(component, DA7210_PLL, DA7210_PLL_FS_48000);


 snd_soc_component_write(component, DA7210_STARTUP1, DA7210_SC_MST_EN);

 dev_info(component->dev, "DA7210 Audio Codec %s\n", DA7210_VERSION);

 return 0;
}
