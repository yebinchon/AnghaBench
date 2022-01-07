
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct lx6464es {int pcm_granularity; TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int EAGAIN ;
 int MICROBLAZE_IBL_MAX ;
 int MICROBLAZE_IBL_MIN ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*,int) ;
 int dev_warn (int ,char*) ;
 int lx_dsp_set_granularity (struct lx6464es*,int) ;

__attribute__((used)) static int lx_set_granularity(struct lx6464es *chip, u32 gran)
{
 int err = 0;
 u32 snapped_gran = MICROBLAZE_IBL_MIN;

 dev_dbg(chip->card->dev, "->lx_set_granularity\n");


 while ((snapped_gran < gran) &&
        (snapped_gran < MICROBLAZE_IBL_MAX)) {
  snapped_gran *= 2;
 }

 if (snapped_gran == chip->pcm_granularity)
  return 0;

 err = lx_dsp_set_granularity(chip, snapped_gran);
 if (err < 0) {
  dev_warn(chip->card->dev, "could not set granularity\n");
  err = -EAGAIN;
 }

 if (snapped_gran != gran)
  dev_err(chip->card->dev, "snapped blocksize to %d\n", snapped_gran);

 dev_dbg(chip->card->dev, "set blocksize on board %d\n", snapped_gran);
 chip->pcm_granularity = snapped_gran;

 return err;
}
