
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct lx6464es {int board_sample_rate; TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int EAGAIN ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*,int,int,int) ;
 int lx_dsp_get_clock_frequency (struct lx6464es*,int*) ;
 int lx_dsp_get_version (struct lx6464es*,int*) ;

__attribute__((used)) static int lx_init_get_version_features(struct lx6464es *chip)
{
 u32 dsp_version;

 int err;

 dev_dbg(chip->card->dev, "->lx_init_get_version_features\n");

 err = lx_dsp_get_version(chip, &dsp_version);

 if (err == 0) {
  u32 freq;

  dev_info(chip->card->dev, "DSP version: V%02d.%02d #%d\n",
      (dsp_version>>16) & 0xff, (dsp_version>>8) & 0xff,
      dsp_version & 0xff);
  err = lx_dsp_get_clock_frequency(chip, &freq);
  if (err == 0)
   chip->board_sample_rate = freq;
  dev_dbg(chip->card->dev, "actual clock frequency %d\n", freq);
 } else {
  dev_err(chip->card->dev, "DSP corrupted \n");
  err = -EAGAIN;
 }

 return err;
}
