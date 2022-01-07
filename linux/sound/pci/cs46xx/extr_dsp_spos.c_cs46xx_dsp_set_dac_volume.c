
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u16 ;
struct snd_cs46xx {int spos_mutex; struct dsp_spos_instance* dsp_spos_instance; } ;
struct dsp_spos_instance {void* dac_volume_right; void* dac_volume_left; struct dsp_scb_descriptor* the_null_scb; TYPE_2__* rear_mix_scb; TYPE_1__* master_mix_scb; } ;
struct dsp_scb_descriptor {struct dsp_scb_descriptor* next_scb_ptr; } ;
struct TYPE_4__ {struct dsp_scb_descriptor* sub_list_ptr; } ;
struct TYPE_3__ {struct dsp_scb_descriptor* sub_list_ptr; } ;


 int cs46xx_dsp_scb_set_volume (struct snd_cs46xx*,struct dsp_scb_descriptor*,void*,void*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int cs46xx_dsp_set_dac_volume (struct snd_cs46xx * chip, u16 left, u16 right)
{
 struct dsp_spos_instance * ins = chip->dsp_spos_instance;
 struct dsp_scb_descriptor * scb;

 mutex_lock(&chip->spos_mutex);


 scb = ins->master_mix_scb->sub_list_ptr;
 while (scb != ins->the_null_scb) {
  cs46xx_dsp_scb_set_volume (chip,scb,left,right);
  scb = scb->next_scb_ptr;
 }


 scb = ins->rear_mix_scb->sub_list_ptr;
 while (scb != ins->the_null_scb) {
  cs46xx_dsp_scb_set_volume (chip,scb,left,right);
  scb = scb->next_scb_ptr;
 }

 ins->dac_volume_left = left;
 ins->dac_volume_right = right;

 mutex_unlock(&chip->spos_mutex);

 return 0;
}
