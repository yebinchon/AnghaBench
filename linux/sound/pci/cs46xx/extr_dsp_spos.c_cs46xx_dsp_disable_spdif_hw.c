
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_cs46xx {struct dsp_spos_instance* dsp_spos_instance; } ;
struct dsp_spos_instance {int spdif_status_out; } ;


 int BA0_ASER_FADDR ;
 int DSP_SPDIF_STATUS_HW_ENABLED ;
 int SP_SPDIN_FIFOPTR ;
 int SP_SPDOUT_CONTROL ;
 int SP_SPDOUT_CSUV ;
 int cs46xx_poke_via_dsp (struct snd_cs46xx*,int ,int) ;
 int snd_cs46xx_pokeBA0 (struct snd_cs46xx*,int ,int ) ;

__attribute__((used)) static void cs46xx_dsp_disable_spdif_hw (struct snd_cs46xx *chip)
{
 struct dsp_spos_instance * ins = chip->dsp_spos_instance;


 snd_cs46xx_pokeBA0(chip, BA0_ASER_FADDR, 0);


 cs46xx_poke_via_dsp (chip,SP_SPDOUT_CONTROL, 0);



 cs46xx_poke_via_dsp (chip,SP_SPDOUT_CSUV, 0x0);


 cs46xx_poke_via_dsp (chip,SP_SPDIN_FIFOPTR, 0x0);


 ins->spdif_status_out &= ~DSP_SPDIF_STATUS_HW_ENABLED;
}
