
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dice {int dev_lock_changed; int hwdep_wait; } ;


 int wake_up (int *) ;

__attribute__((used)) static void dice_lock_changed(struct snd_dice *dice)
{
 dice->dev_lock_changed = 1;
 wake_up(&dice->hwdep_wait);
}
