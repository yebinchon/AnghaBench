
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ak4117 {int timer; } ;


 int del_timer_sync (int *) ;
 int kfree (struct ak4117*) ;

__attribute__((used)) static void snd_ak4117_free(struct ak4117 *chip)
{
 del_timer_sync(&chip->timer);
 kfree(chip);
}
