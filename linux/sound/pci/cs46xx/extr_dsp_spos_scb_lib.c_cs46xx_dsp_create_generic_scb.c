
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct snd_cs46xx {TYPE_1__* card; } ;
struct dsp_symbol_entry {int dummy; } ;
struct dsp_scb_descriptor {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int SYMBOL_CODE ;
 struct dsp_scb_descriptor* _dsp_create_generic_scb (struct snd_cs46xx*,char*,int *,int ,struct dsp_symbol_entry*,struct dsp_scb_descriptor*,int) ;
 struct dsp_symbol_entry* cs46xx_dsp_lookup_symbol (struct snd_cs46xx*,char*,int ) ;
 int dev_err (int ,char*,char*) ;

__attribute__((used)) static struct dsp_scb_descriptor *
cs46xx_dsp_create_generic_scb (struct snd_cs46xx *chip, char * name, u32 * scb_data,
          u32 dest, char * task_entry_name,
                               struct dsp_scb_descriptor * parent_scb,
                               int scb_child_type)
{
 struct dsp_symbol_entry * task_entry;

 task_entry = cs46xx_dsp_lookup_symbol (chip,task_entry_name,
            SYMBOL_CODE);

 if (task_entry == ((void*)0)) {
  dev_err(chip->card->dev,
   "dsp_spos: symbol %s not found\n", task_entry_name);
  return ((void*)0);
 }

 return _dsp_create_generic_scb (chip,name,scb_data,dest,task_entry,
     parent_scb,scb_child_type);
}
