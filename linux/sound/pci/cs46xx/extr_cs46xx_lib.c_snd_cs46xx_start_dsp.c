
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int ctl; } ;
struct snd_cs46xx {unsigned int play_ctl; TYPE_2__ capt; TYPE_1__* card; int * modules; } ;
struct TYPE_3__ {int dev; } ;


 int BA1_CCTL ;
 int BA1_CVOL ;
 int BA1_PCTL ;
 int BA1_PVOL ;
 int CS46XX_DSP_MODULES ;
 int EIO ;
 int cs46xx_dsp_load_module (struct snd_cs46xx*,int ) ;
 scalar_t__ cs46xx_dsp_scb_and_task_init (struct snd_cs46xx*) ;
 int cs46xx_enable_stream_irqs (struct snd_cs46xx*) ;
 int dev_err (int ,char*,...) ;
 int load_firmware (struct snd_cs46xx*,...) ;
 int mdelay (int) ;
 int * module_names ;
 int snd_cs46xx_download_image (struct snd_cs46xx*) ;
 unsigned int snd_cs46xx_peek (struct snd_cs46xx*,int ) ;
 int snd_cs46xx_poke (struct snd_cs46xx*,int ,int) ;
 int snd_cs46xx_proc_start (struct snd_cs46xx*) ;
 int snd_cs46xx_reset (struct snd_cs46xx*) ;
 int snd_cs46xx_set_capture_sample_rate (struct snd_cs46xx*,int) ;
 int snd_cs46xx_set_play_sample_rate (struct snd_cs46xx*,int) ;

int snd_cs46xx_start_dsp(struct snd_cs46xx *chip)
{
 unsigned int tmp;



 int err;




 snd_cs46xx_reset(chip);
 err = load_firmware(chip);
 if (err < 0)
  return err;


 err = snd_cs46xx_download_image(chip);
 if (err < 0) {
  dev_err(chip->card->dev, "image download error\n");
  return err;
 }




 tmp = snd_cs46xx_peek(chip, BA1_PCTL);
 chip->play_ctl = tmp & 0xffff0000;
 snd_cs46xx_poke(chip, BA1_PCTL, tmp & 0x0000ffff);





 tmp = snd_cs46xx_peek(chip, BA1_CCTL);
 chip->capt.ctl = tmp & 0x0000ffff;
 snd_cs46xx_poke(chip, BA1_CCTL, tmp & 0xffff0000);

 mdelay(5);

 snd_cs46xx_set_play_sample_rate(chip, 8000);
 snd_cs46xx_set_capture_sample_rate(chip, 8000);

 snd_cs46xx_proc_start(chip);

 cs46xx_enable_stream_irqs(chip);



 snd_cs46xx_poke(chip, BA1_PVOL, 0x80008000);
 snd_cs46xx_poke(chip, BA1_CVOL, 0x80008000);


 return 0;
}
