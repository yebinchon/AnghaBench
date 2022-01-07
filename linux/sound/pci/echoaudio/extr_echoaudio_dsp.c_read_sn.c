
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct echoaudio {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int dev_dbg (int ,char*,int ,int ,int ,int ,int ) ;
 int dev_err (int ,char*) ;
 scalar_t__ read_dsp (struct echoaudio*,int *) ;

__attribute__((used)) static int read_sn(struct echoaudio *chip)
{
 int i;
 u32 sn[6];

 for (i = 0; i < 5; i++) {
  if (read_dsp(chip, &sn[i])) {
   dev_err(chip->card->dev,
    "Failed to read serial number\n");
   return -EIO;
  }
 }
 dev_dbg(chip->card->dev,
  "Read serial number %08x %08x %08x %08x %08x\n",
   sn[0], sn[1], sn[2], sn[3], sn[4]);
 return 0;
}
