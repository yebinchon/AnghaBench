
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_cs46xx {int reg_lock; struct dsp_spos_instance* dsp_spos_instance; } ;
struct dsp_spos_instance {int nscb; scalar_t__ the_null_scb; size_t scb_highest_frag_index; struct dsp_scb_descriptor* scbs; } ;
struct dsp_scb_descriptor {int index; scalar_t__ sub_list_ptr; scalar_t__ next_scb_ptr; int deleted; int * data; int scb_symbol; } ;


 int _dsp_unlink_scb (struct snd_cs46xx*,struct dsp_scb_descriptor*) ;
 int cs46xx_dsp_proc_free_scb_desc (struct dsp_scb_descriptor*) ;
 int i ;
 int kfree (int *) ;
 int remove_symbol (struct snd_cs46xx*,int ) ;
 scalar_t__ snd_BUG_ON (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void cs46xx_dsp_remove_scb (struct snd_cs46xx *chip, struct dsp_scb_descriptor * scb)
{
 struct dsp_spos_instance * ins = chip->dsp_spos_instance;
 unsigned long flags;


 if (snd_BUG_ON(scb->index < 0 ||
         scb->index >= ins->nscb ||
         (ins->scbs + scb->index) != scb))
  return;
 spin_lock_irqsave(&chip->reg_lock, flags);
 _dsp_unlink_scb (chip,scb);
 spin_unlock_irqrestore(&chip->reg_lock, flags);

 cs46xx_dsp_proc_free_scb_desc(scb);
 if (snd_BUG_ON(!scb->scb_symbol))
  return;
 remove_symbol (chip,scb->scb_symbol);

 ins->scbs[scb->index].deleted = 1;





 if (scb->index < ins->scb_highest_frag_index)
  ins->scb_highest_frag_index = scb->index;

 if (scb->index == ins->nscb - 1) {
  ins->nscb --;
 }

 if (ins->scb_highest_frag_index > ins->nscb) {
  ins->scb_highest_frag_index = ins->nscb;
 }







}
