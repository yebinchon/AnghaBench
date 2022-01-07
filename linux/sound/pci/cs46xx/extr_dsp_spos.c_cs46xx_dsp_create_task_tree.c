
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct snd_cs46xx {TYPE_1__* card; } ;
struct dsp_task_descriptor {int * data; } ;
struct TYPE_2__ {int dev; } ;


 int _dsp_create_task_tree (struct snd_cs46xx*,int *,int ,int) ;
 struct dsp_task_descriptor* _map_task_tree (struct snd_cs46xx*,char*,int ,int) ;
 int dev_err (int ,char*) ;

__attribute__((used)) static struct dsp_task_descriptor *
cs46xx_dsp_create_task_tree (struct snd_cs46xx *chip, char * name, u32 * task_data,
        u32 dest, int size)
{
 struct dsp_task_descriptor * desc;

 desc = _map_task_tree (chip,name,dest,size);
 if (desc) {
  desc->data = task_data;
  _dsp_create_task_tree(chip,task_data,dest,size);
 } else {
  dev_err(chip->card->dev, "dsp_spos: failed to map TASK\n");
 }

 return desc;
}
