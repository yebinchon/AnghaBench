
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct mtpav_port {int mode; scalar_t__ output; } ;
struct mtpav {int num_ports; int spinlock; struct mtpav_port* ports; int timer; } ;


 int MTPAV_MODE_OUTPUT_TRIGGERED ;
 int MTPAV_PIDX_BROADCAST ;
 struct mtpav* chip ;
 struct mtpav* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int snd_mtpav_output_port_write (struct mtpav*,struct mtpav_port*,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timer ;

__attribute__((used)) static void snd_mtpav_output_timer(struct timer_list *t)
{
 unsigned long flags;
 struct mtpav *chip = from_timer(chip, t, timer);
 int p;

 spin_lock_irqsave(&chip->spinlock, flags);

 mod_timer(&chip->timer, 1 + jiffies);

 for (p = 0; p <= chip->num_ports * 2 + MTPAV_PIDX_BROADCAST; p++) {
  struct mtpav_port *portp = &chip->ports[p];
  if ((portp->mode & MTPAV_MODE_OUTPUT_TRIGGERED) && portp->output)
   snd_mtpav_output_port_write(chip, portp, portp->output);
 }
 spin_unlock_irqrestore(&chip->spinlock, flags);
}
