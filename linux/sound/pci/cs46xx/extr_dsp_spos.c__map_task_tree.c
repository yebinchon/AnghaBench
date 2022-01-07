
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct snd_cs46xx {TYPE_1__* card; struct dsp_spos_instance* dsp_spos_instance; } ;
struct dsp_task_descriptor {size_t index; void* size; void* address; int task_name; } ;
struct dsp_spos_instance {int ntask; struct dsp_task_descriptor* tasks; } ;
struct TYPE_2__ {int dev; } ;


 int DSP_MAX_TASK_DESC ;
 int SYMBOL_PARAMETER ;
 int add_symbol (struct snd_cs46xx*,char*,void*,int ) ;
 int dev_err (int ,char*) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static struct dsp_task_descriptor *
_map_task_tree (struct snd_cs46xx *chip, char * name, u32 dest, u32 size)
{
 struct dsp_spos_instance * ins = chip->dsp_spos_instance;
 struct dsp_task_descriptor * desc = ((void*)0);

 if (ins->ntask == DSP_MAX_TASK_DESC - 1) {
  dev_err(chip->card->dev,
   "dsp_spos: got no place for other TASK\n");
  return ((void*)0);
 }

 if (name)
  strcpy(ins->tasks[ins->ntask].task_name, name);
 else
  strcpy(ins->tasks[ins->ntask].task_name, "(NULL)");
 ins->tasks[ins->ntask].address = dest;
 ins->tasks[ins->ntask].size = size;


 ins->tasks[ins->ntask].index = ins->ntask;
 desc = (ins->tasks + ins->ntask);
 ins->ntask++;

 if (name)
  add_symbol (chip,name,dest,SYMBOL_PARAMETER);
 return desc;
}
