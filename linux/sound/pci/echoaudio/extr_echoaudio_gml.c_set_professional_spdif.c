
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct echoaudio {int sample_rate; char professional_spdif; TYPE_1__* card; TYPE_2__* comm_page; } ;
struct TYPE_4__ {int control_register; } ;
struct TYPE_3__ {int dev; } ;


 int GML_SPDIF_24_BIT ;
 int GML_SPDIF_COPY_PERMIT ;
 int GML_SPDIF_FORMAT_CLEAR_MASK ;
 int GML_SPDIF_PRO_MODE ;
 int GML_SPDIF_SAMPLE_RATE0 ;
 int GML_SPDIF_SAMPLE_RATE1 ;
 int GML_SPDIF_TWO_CHANNEL ;
 int dev_dbg (int ,char*,char*) ;
 int le32_to_cpu (int ) ;
 int write_control_reg (struct echoaudio*,int,int) ;

__attribute__((used)) static int set_professional_spdif(struct echoaudio *chip, char prof)
{
 u32 control_reg;
 int err;


 control_reg = le32_to_cpu(chip->comm_page->control_register);
 control_reg &= GML_SPDIF_FORMAT_CLEAR_MASK;


 control_reg |= GML_SPDIF_TWO_CHANNEL | GML_SPDIF_24_BIT |
  GML_SPDIF_COPY_PERMIT;
 if (prof) {

  control_reg |= GML_SPDIF_PRO_MODE;

  switch (chip->sample_rate) {
  case 32000:
   control_reg |= GML_SPDIF_SAMPLE_RATE0 |
    GML_SPDIF_SAMPLE_RATE1;
   break;
  case 44100:
   control_reg |= GML_SPDIF_SAMPLE_RATE0;
   break;
  case 48000:
   control_reg |= GML_SPDIF_SAMPLE_RATE1;
   break;
  }
 } else {

  switch (chip->sample_rate) {
  case 32000:
   control_reg |= GML_SPDIF_SAMPLE_RATE0 |
    GML_SPDIF_SAMPLE_RATE1;
   break;
  case 48000:
   control_reg |= GML_SPDIF_SAMPLE_RATE1;
   break;
  }
 }

 if ((err = write_control_reg(chip, control_reg, 0)))
  return err;
 chip->professional_spdif = prof;
 dev_dbg(chip->card->dev, "set_professional_spdif to %s\n",
  prof ? "Professional" : "Consumer");
 return 0;
}
