
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct lx6464es {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int MASK_SYS_STATUS_EOBI ;
 int MASK_SYS_STATUS_EOBO ;
 int MASK_SYS_STATUS_FREQ ;
 int dev_dbg (int ,char*,int) ;
 int lx_dsp_read_async_events (struct lx6464es*,int*) ;

__attribute__((used)) static int lx_interrupt_handle_async_events(struct lx6464es *chip, u32 irqsrc,
         int *r_freq_changed,
         u64 *r_notified_in_pipe_mask,
         u64 *r_notified_out_pipe_mask)
{
 int err;
 u32 stat[9];
 int eb_pending_out = (irqsrc & MASK_SYS_STATUS_EOBO) ? 1 : 0;
 int eb_pending_in = (irqsrc & MASK_SYS_STATUS_EOBI) ? 1 : 0;

 *r_freq_changed = (irqsrc & MASK_SYS_STATUS_FREQ) ? 1 : 0;

 err = lx_dsp_read_async_events(chip, stat);
 if (err < 0)
  return err;

 if (eb_pending_in) {
  *r_notified_in_pipe_mask = ((u64)stat[3] << 32)
   + stat[4];
  dev_dbg(chip->card->dev, "interrupt: EOBI pending %llx\n",
       *r_notified_in_pipe_mask);
 }
 if (eb_pending_out) {
  *r_notified_out_pipe_mask = ((u64)stat[1] << 32)
   + stat[2];
  dev_dbg(chip->card->dev, "interrupt: EOBO pending %llx\n",
       *r_notified_out_pipe_mask);
 }



 return err;
}
