
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxygen {int reg_lock; scalar_t__ pcm_running; scalar_t__ interrupt_mask; } ;


 int OXYGEN_DMA_STATUS ;
 int OXYGEN_INTERRUPT_MASK ;
 int oxygen_write16 (struct oxygen*,int ,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void oxygen_shutdown(struct oxygen *chip)
{
 spin_lock_irq(&chip->reg_lock);
 chip->interrupt_mask = 0;
 chip->pcm_running = 0;
 oxygen_write16(chip, OXYGEN_DMA_STATUS, 0);
 oxygen_write16(chip, OXYGEN_INTERRUPT_MASK, 0);
 spin_unlock_irq(&chip->reg_lock);
}
