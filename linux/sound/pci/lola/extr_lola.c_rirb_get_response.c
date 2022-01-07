
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cmds; } ;
struct lola {int polling_mode; unsigned int res; unsigned int res_ex; TYPE_2__* card; int last_extdata; int last_data; int last_verb; int last_cmd_nid; TYPE_1__ rirb; int reg_lock; } ;
struct TYPE_4__ {int dev; } ;


 int EIO ;
 int LOLA_RIRB_EX_ERROR ;
 int cond_resched () ;
 int dev_warn (int ,char*,...) ;
 unsigned long jiffies ;
 int lola_update_rirb (struct lola*) ;
 unsigned long msecs_to_jiffies (int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int udelay (int) ;
 int verbose_debug (char*,unsigned int,unsigned int) ;

__attribute__((used)) static int rirb_get_response(struct lola *chip, unsigned int *val,
        unsigned int *extval)
{
 unsigned long timeout;

 again:
 timeout = jiffies + msecs_to_jiffies(1000);
 for (;;) {
  if (chip->polling_mode) {
   spin_lock_irq(&chip->reg_lock);
   lola_update_rirb(chip);
   spin_unlock_irq(&chip->reg_lock);
  }
  if (!chip->rirb.cmds) {
   *val = chip->res;
   if (extval)
    *extval = chip->res_ex;
   verbose_debug("get_response: %x, %x\n",
          chip->res, chip->res_ex);
   if (chip->res_ex & LOLA_RIRB_EX_ERROR) {
    dev_warn(chip->card->dev, "RIRB ERROR: "
           "NID=%x, verb=%x, data=%x, ext=%x\n",
           chip->last_cmd_nid,
           chip->last_verb, chip->last_data,
           chip->last_extdata);
    return -EIO;
   }
   return 0;
  }
  if (time_after(jiffies, timeout))
   break;
  udelay(20);
  cond_resched();
 }
 dev_warn(chip->card->dev, "RIRB response error\n");
 if (!chip->polling_mode) {
  dev_warn(chip->card->dev, "switching to polling mode\n");
  chip->polling_mode = 1;
  goto again;
 }
 return -EIO;
}
