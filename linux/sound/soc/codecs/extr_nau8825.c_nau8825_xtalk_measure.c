
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nau8825 {int xtalk_state; int* imp_rms; int regmap; int dev; } ;


 int NAU8825_REG_DAC_DGAIN_CTRL ;
 int NAU8825_REG_IMM_RMS_L ;
 int NAU8825_XTALK_DONE ;




 int dev_dbg (int ,char*,int) ;
 int msleep (int) ;
 int nau8825_xtalk_clean (struct nau8825*,int) ;
 int nau8825_xtalk_imm_start (struct nau8825*,int) ;
 int nau8825_xtalk_imm_stop (struct nau8825*) ;
 int nau8825_xtalk_prepare (struct nau8825*) ;
 int nau8825_xtalk_sidetone (int,int) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static void nau8825_xtalk_measure(struct nau8825 *nau8825)
{
 u32 sidetone;

 switch (nau8825->xtalk_state) {
 case 128:



  nau8825_xtalk_prepare(nau8825);
  msleep(280);

  nau8825->xtalk_state = 130;
  nau8825_xtalk_imm_start(nau8825, 0x00d2);
  break;
 case 130:



  regmap_read(nau8825->regmap, NAU8825_REG_IMM_RMS_L,
   &nau8825->imp_rms[130]);
  dev_dbg(nau8825->dev, "HPR_R2L imm: %x\n",
   nau8825->imp_rms[130]);

  nau8825_xtalk_imm_stop(nau8825);

  nau8825->xtalk_state = 131;
  nau8825_xtalk_imm_start(nau8825, 0x00ff);
  break;
 case 131:






  regmap_read(nau8825->regmap, NAU8825_REG_IMM_RMS_L,
   &nau8825->imp_rms[131]);
  dev_dbg(nau8825->dev, "HPL_R2L imm: %x\n",
   nau8825->imp_rms[131]);
  nau8825_xtalk_imm_stop(nau8825);
  msleep(150);
  nau8825->xtalk_state = 129;
  break;
 case 129:





  sidetone = nau8825_xtalk_sidetone(
   nau8825->imp_rms[130],
   nau8825->imp_rms[131]);
  dev_dbg(nau8825->dev, "cross talk sidetone: %x\n", sidetone);
  regmap_write(nau8825->regmap, NAU8825_REG_DAC_DGAIN_CTRL,
     (sidetone << 8) | sidetone);
  nau8825_xtalk_clean(nau8825, 0);
  nau8825->xtalk_state = NAU8825_XTALK_DONE;
  break;
 default:
  break;
 }
}
