
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct snd_cs46xx {TYPE_1__* card; } ;
struct dsp_scb_descriptor {int * data; } ;
struct TYPE_2__ {int dev; } ;


 int GFP_KERNEL ;
 int SCB_BYTES ;
 int _dsp_create_scb (struct snd_cs46xx*,int *,int ) ;
 struct dsp_scb_descriptor* _map_scb (struct snd_cs46xx*,char*,int ) ;
 int dev_err (int ,char*) ;
 int kfree (int *) ;
 int * kmemdup (int *,int ,int ) ;

struct dsp_scb_descriptor *
cs46xx_dsp_create_scb (struct snd_cs46xx *chip, char * name, u32 * scb_data, u32 dest)
{
 struct dsp_scb_descriptor * desc;
 desc = _map_scb (chip,name,dest);
 if (desc) {
  desc->data = scb_data;
  _dsp_create_scb(chip,scb_data,dest);
 } else {
  dev_err(chip->card->dev, "dsp_spos: failed to map SCB\n");



 }

 return desc;
}
