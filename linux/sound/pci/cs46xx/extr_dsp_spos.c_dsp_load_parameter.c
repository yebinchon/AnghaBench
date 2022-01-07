
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct snd_cs46xx {TYPE_1__* card; } ;
struct dsp_segment_desc {int offset; int size; int data; } ;
struct TYPE_2__ {int dev; } ;


 int DSP_PARAMETER_BYTE_OFFSET ;
 int EINVAL ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*) ;
 scalar_t__ snd_cs46xx_download (struct snd_cs46xx*,int ,int,int) ;

__attribute__((used)) static int dsp_load_parameter(struct snd_cs46xx *chip,
         struct dsp_segment_desc *parameter)
{
 u32 doffset, dsize;

 if (!parameter) {
  dev_dbg(chip->card->dev,
   "dsp_spos: module got no parameter segment\n");
  return 0;
 }

 doffset = (parameter->offset * 4 + DSP_PARAMETER_BYTE_OFFSET);
 dsize = parameter->size * 4;

 dev_dbg(chip->card->dev,
  "dsp_spos: downloading parameter data to chip (%08x-%08x)\n",
      doffset,doffset + dsize);
 if (snd_cs46xx_download (chip, parameter->data, doffset, dsize)) {
  dev_err(chip->card->dev,
   "dsp_spos: failed to download parameter data to DSP\n");
  return -EINVAL;
 }
 return 0;
}
