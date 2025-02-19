
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cs4281_dma {unsigned int fifo_offset; int valFCR; scalar_t__ regFCR; scalar_t__ regFSIC; scalar_t__ regHDSR; scalar_t__ regDCR; scalar_t__ regDMR; scalar_t__ regDCC; scalar_t__ regDBC; scalar_t__ regDCA; scalar_t__ regDBA; } ;
struct cs4281 {int dual_codec; int src_left_play_slot; int src_right_play_slot; int src_left_rec_slot; int src_right_rec_slot; int irq; struct cs4281_dma* dma; TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ BA0_ACCTL ;
 int BA0_ACCTL_ESYN ;
 int BA0_ACCTL_VFRM ;
 scalar_t__ BA0_ACISV ;
 int BA0_ACISV_SLV (int) ;
 scalar_t__ BA0_ACOSV ;
 int BA0_ACOSV_SLV (int) ;
 scalar_t__ BA0_ACSTS ;
 scalar_t__ BA0_ACSTS2 ;
 int BA0_ACSTS_CRDY ;
 scalar_t__ BA0_CFLR ;
 unsigned int BA0_CFLR_DEFAULT ;
 scalar_t__ BA0_CLKCR1 ;
 int BA0_CLKCR1_DLLP ;
 int BA0_CLKCR1_DLLRDY ;
 int BA0_CLKCR1_SWCE ;
 scalar_t__ BA0_CWPR ;
 scalar_t__ BA0_DBA0 ;
 scalar_t__ BA0_DBC0 ;
 scalar_t__ BA0_DCA0 ;
 scalar_t__ BA0_DCC0 ;
 scalar_t__ BA0_DCR0 ;
 scalar_t__ BA0_DMR0 ;
 scalar_t__ BA0_EPPMC ;
 unsigned int BA0_EPPMC_FPDN ;
 scalar_t__ BA0_FCR0 ;
 int BA0_FCR_FEN ;
 int BA0_FCR_LS (int) ;
 int BA0_FCR_OF (unsigned int) ;
 int BA0_FCR_RS (int) ;
 int BA0_FCR_SZ (unsigned int) ;
 scalar_t__ BA0_FSIC0 ;
 scalar_t__ BA0_HDSR0 ;
 scalar_t__ BA0_HICR ;
 int BA0_HICR_EOI ;
 scalar_t__ BA0_HIMR ;
 int BA0_HISR_DMA (int) ;
 int BA0_HISR_DMAI ;
 int BA0_HISR_MIDI ;
 scalar_t__ BA0_PPLVC ;
 scalar_t__ BA0_PPRVC ;
 scalar_t__ BA0_SERC1 ;
 unsigned int BA0_SERC1_AC97 ;
 unsigned int BA0_SERC1_SO1EN ;
 scalar_t__ BA0_SERC2 ;
 unsigned int BA0_SERC2_AC97 ;
 unsigned int BA0_SERC2_SI1EN ;
 scalar_t__ BA0_SERMC ;
 int BA0_SERMC_MSPE ;
 int BA0_SERMC_PTC_AC97 ;
 int BA0_SERMC_TCID (int) ;
 scalar_t__ BA0_SPMC ;
 int BA0_SPMC_ASDI2E ;
 int BA0_SPMC_RSTN ;
 scalar_t__ BA0_SRCSA ;
 scalar_t__ BA0_SSPM ;
 int BA0_SSPM_ACLEN ;
 int BA0_SSPM_CSRCEN ;
 int BA0_SSPM_FMEN ;
 int BA0_SSPM_JSEN ;
 int BA0_SSPM_MIXEN ;
 int BA0_SSPM_PSRCEN ;
 unsigned int CS4281_FIFO_SIZE ;
 int EIO ;
 unsigned long HZ ;
 int dev_err (int ,char*,...) ;
 int dev_info (int ,char*) ;
 unsigned long jiffies ;
 int msleep (int) ;
 int schedule_timeout_uninterruptible (int) ;
 int snd_cs4281_peekBA0 (struct cs4281*,scalar_t__) ;
 int snd_cs4281_pokeBA0 (struct cs4281*,scalar_t__,int) ;
 int synchronize_irq (int ) ;
 scalar_t__ time_after_eq (unsigned long,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static int snd_cs4281_chip_init(struct cs4281 *chip)
{
 unsigned int tmp;
 unsigned long end_time;
 int retry_count = 2;


 tmp = snd_cs4281_peekBA0(chip, BA0_EPPMC);
 if (tmp & BA0_EPPMC_FPDN)
  snd_cs4281_pokeBA0(chip, BA0_EPPMC, tmp & ~BA0_EPPMC_FPDN);

      __retry:
 tmp = snd_cs4281_peekBA0(chip, BA0_CFLR);
 if (tmp != BA0_CFLR_DEFAULT) {
  snd_cs4281_pokeBA0(chip, BA0_CFLR, BA0_CFLR_DEFAULT);
  tmp = snd_cs4281_peekBA0(chip, BA0_CFLR);
  if (tmp != BA0_CFLR_DEFAULT) {
   dev_err(chip->card->dev,
    "CFLR setup failed (0x%x)\n", tmp);
   return -EIO;
  }
 }




 snd_cs4281_pokeBA0(chip, BA0_CWPR, 0x4281);

 if ((tmp = snd_cs4281_peekBA0(chip, BA0_SERC1)) != (BA0_SERC1_SO1EN | BA0_SERC1_AC97)) {
  dev_err(chip->card->dev,
   "SERC1 AC'97 check failed (0x%x)\n", tmp);
  return -EIO;
 }
 if ((tmp = snd_cs4281_peekBA0(chip, BA0_SERC2)) != (BA0_SERC2_SI1EN | BA0_SERC2_AC97)) {
  dev_err(chip->card->dev,
   "SERC2 AC'97 check failed (0x%x)\n", tmp);
  return -EIO;
 }


 snd_cs4281_pokeBA0(chip, BA0_SSPM, BA0_SSPM_MIXEN | BA0_SSPM_CSRCEN |
               BA0_SSPM_PSRCEN | BA0_SSPM_JSEN |
               BA0_SSPM_ACLEN | BA0_SSPM_FMEN);






 snd_cs4281_pokeBA0(chip, BA0_CLKCR1, 0);
 snd_cs4281_pokeBA0(chip, BA0_SERMC, 0);



 snd_cs4281_pokeBA0(chip, BA0_ACCTL, 0);
 udelay(50);





 snd_cs4281_pokeBA0(chip, BA0_SPMC, 0);
 udelay(50);
 snd_cs4281_pokeBA0(chip, BA0_SPMC, BA0_SPMC_RSTN);
 msleep(50);

 if (chip->dual_codec)
  snd_cs4281_pokeBA0(chip, BA0_SPMC, BA0_SPMC_RSTN | BA0_SPMC_ASDI2E);




 snd_cs4281_pokeBA0(chip, BA0_SERMC,
      (chip->dual_codec ? BA0_SERMC_TCID(chip->dual_codec) : BA0_SERMC_TCID(1)) |
      BA0_SERMC_PTC_AC97 | BA0_SERMC_MSPE);




 snd_cs4281_pokeBA0(chip, BA0_CLKCR1, BA0_CLKCR1_DLLP);
 msleep(50);
 snd_cs4281_pokeBA0(chip, BA0_CLKCR1, BA0_CLKCR1_SWCE | BA0_CLKCR1_DLLP);




 end_time = jiffies + HZ;
 do {




  if (snd_cs4281_peekBA0(chip, BA0_CLKCR1) & BA0_CLKCR1_DLLRDY)
   goto __ok0;
  schedule_timeout_uninterruptible(1);
 } while (time_after_eq(end_time, jiffies));

 dev_err(chip->card->dev, "DLLRDY not seen\n");
 return -EIO;

      __ok0:






 snd_cs4281_pokeBA0(chip, BA0_ACCTL, BA0_ACCTL_ESYN);




 end_time = jiffies + HZ;
 do {




  if (snd_cs4281_peekBA0(chip, BA0_ACSTS) & BA0_ACSTS_CRDY)
   goto __ok1;
  schedule_timeout_uninterruptible(1);
 } while (time_after_eq(end_time, jiffies));

 dev_err(chip->card->dev,
  "never read codec ready from AC'97 (0x%x)\n",
  snd_cs4281_peekBA0(chip, BA0_ACSTS));
 return -EIO;

      __ok1:
 if (chip->dual_codec) {
  end_time = jiffies + HZ;
  do {
   if (snd_cs4281_peekBA0(chip, BA0_ACSTS2) & BA0_ACSTS_CRDY)
    goto __codec2_ok;
   schedule_timeout_uninterruptible(1);
  } while (time_after_eq(end_time, jiffies));
  dev_info(chip->card->dev,
    "secondary codec doesn't respond. disable it...\n");
  chip->dual_codec = 0;
 __codec2_ok: ;
 }






 snd_cs4281_pokeBA0(chip, BA0_ACCTL, BA0_ACCTL_VFRM | BA0_ACCTL_ESYN);






 end_time = jiffies + HZ;
 do {




                if ((snd_cs4281_peekBA0(chip, BA0_ACISV) & (BA0_ACISV_SLV(3) | BA0_ACISV_SLV(4))) == (BA0_ACISV_SLV(3) | BA0_ACISV_SLV(4)))
                        goto __ok2;
  schedule_timeout_uninterruptible(1);
 } while (time_after_eq(end_time, jiffies));

 if (--retry_count > 0)
  goto __retry;
 dev_err(chip->card->dev, "never read ISV3 and ISV4 from AC'97\n");
 return -EIO;

      __ok2:





 snd_cs4281_pokeBA0(chip, BA0_ACOSV, BA0_ACOSV_SLV(3) | BA0_ACOSV_SLV(4));




 for (tmp = 0; tmp < 4; tmp++) {
  struct cs4281_dma *dma = &chip->dma[tmp];
  dma->regDBA = BA0_DBA0 + (tmp * 0x10);
  dma->regDCA = BA0_DCA0 + (tmp * 0x10);
  dma->regDBC = BA0_DBC0 + (tmp * 0x10);
  dma->regDCC = BA0_DCC0 + (tmp * 0x10);
  dma->regDMR = BA0_DMR0 + (tmp * 8);
  dma->regDCR = BA0_DCR0 + (tmp * 8);
  dma->regHDSR = BA0_HDSR0 + (tmp * 4);
  dma->regFCR = BA0_FCR0 + (tmp * 4);
  dma->regFSIC = BA0_FSIC0 + (tmp * 4);
  dma->fifo_offset = tmp * CS4281_FIFO_SIZE;
  snd_cs4281_pokeBA0(chip, dma->regFCR,
       BA0_FCR_LS(31) |
       BA0_FCR_RS(31) |
       BA0_FCR_SZ(CS4281_FIFO_SIZE) |
       BA0_FCR_OF(dma->fifo_offset));
 }

 chip->src_left_play_slot = 0;
 chip->src_right_play_slot = 1;
 chip->src_left_rec_slot = 10;
 chip->src_right_rec_slot = 11;


 chip->dma[0].valFCR = BA0_FCR_FEN | BA0_FCR_LS(0) |
                BA0_FCR_RS(1) |
                   BA0_FCR_SZ(CS4281_FIFO_SIZE) |
                BA0_FCR_OF(chip->dma[0].fifo_offset);
 snd_cs4281_pokeBA0(chip, chip->dma[0].regFCR, chip->dma[0].valFCR);
 snd_cs4281_pokeBA0(chip, BA0_SRCSA, (chip->src_left_play_slot << 0) |
         (chip->src_right_play_slot << 8) |
         (chip->src_left_rec_slot << 16) |
         (chip->src_right_rec_slot << 24));


 snd_cs4281_pokeBA0(chip, BA0_PPLVC, 0);
 snd_cs4281_pokeBA0(chip, BA0_PPRVC, 0);


 snd_cs4281_pokeBA0(chip, BA0_HICR, BA0_HICR_EOI);

 snd_cs4281_pokeBA0(chip, BA0_HIMR, 0x7fffffff & ~(
     BA0_HISR_MIDI |
     BA0_HISR_DMAI |
     BA0_HISR_DMA(0) |
     BA0_HISR_DMA(1) |
     BA0_HISR_DMA(2) |
     BA0_HISR_DMA(3)));
 synchronize_irq(chip->irq);

 return 0;
}
