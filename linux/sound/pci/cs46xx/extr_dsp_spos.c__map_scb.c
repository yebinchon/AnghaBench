
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct snd_cs46xx {TYPE_1__* card; struct dsp_spos_instance* dsp_spos_instance; } ;
struct dsp_spos_instance {int nscb; int scb_highest_frag_index; struct dsp_scb_descriptor* scbs; } ;
struct dsp_scb_descriptor {int index; int ref_count; int scb_symbol; int address; int scb_name; } ;
struct TYPE_2__ {int dev; } ;


 int DSP_MAX_SCB_DESC ;
 int SYMBOL_PARAMETER ;
 int add_symbol (struct snd_cs46xx*,char*,int ,int ) ;
 int dev_err (int ,char*) ;
 int find_free_scb_index (struct dsp_spos_instance*) ;
 int memset (struct dsp_scb_descriptor*,int ,int) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static struct dsp_scb_descriptor * _map_scb (struct snd_cs46xx *chip, char * name, u32 dest)
{
 struct dsp_spos_instance * ins = chip->dsp_spos_instance;
 struct dsp_scb_descriptor * desc = ((void*)0);
 int index;

 if (ins->nscb == DSP_MAX_SCB_DESC - 1) {
  dev_err(chip->card->dev,
   "dsp_spos: got no place for other SCB\n");
  return ((void*)0);
 }

 index = find_free_scb_index (ins);

 memset(&ins->scbs[index], 0, sizeof(ins->scbs[index]));
 strcpy(ins->scbs[index].scb_name, name);
 ins->scbs[index].address = dest;
 ins->scbs[index].index = index;
 ins->scbs[index].ref_count = 1;

 desc = (ins->scbs + index);
 ins->scbs[index].scb_symbol = add_symbol (chip, name, dest, SYMBOL_PARAMETER);

 if (index > ins->scb_highest_frag_index)
  ins->scb_highest_frag_index = index;

 if (index == ins->nscb)
  ins->nscb++;

 return desc;
}
