
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_hal2 {int card; } ;


 int H2I_ADC_C2 ;
 int H2I_C2_L_ATT_M ;
 int H2I_C2_MUTE ;
 int H2I_C2_R_ATT_M ;
 int H2I_DAC_C2 ;
 int hal2_ctrl_headphone ;
 int hal2_ctrl_mic ;
 int hal2_i_write32 (struct snd_hal2*,int ,int) ;
 int snd_ctl_add (int ,int ) ;
 int snd_ctl_new1 (int *,struct snd_hal2*) ;

__attribute__((used)) static int hal2_mixer_create(struct snd_hal2 *hal2)
{
 int err;


 hal2_i_write32(hal2, H2I_DAC_C2,
         H2I_C2_L_ATT_M | H2I_C2_R_ATT_M | H2I_C2_MUTE);

 hal2_i_write32(hal2, H2I_ADC_C2, 0);

 err = snd_ctl_add(hal2->card,
     snd_ctl_new1(&hal2_ctrl_headphone, hal2));
 if (err < 0)
  return err;

 err = snd_ctl_add(hal2->card,
     snd_ctl_new1(&hal2_ctrl_mic, hal2));
 if (err < 0)
  return err;

 return 0;
}
