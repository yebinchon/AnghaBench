
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct ak4117 {int timer; scalar_t__ init; } ;


 struct ak4117* chip ;
 struct ak4117* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int snd_ak4117_check_rate_and_errors (struct ak4117*,int ) ;
 int timer ;

__attribute__((used)) static void snd_ak4117_timer(struct timer_list *t)
{
 struct ak4117 *chip = from_timer(chip, t, timer);

 if (chip->init)
  return;
 snd_ak4117_check_rate_and_errors(chip, 0);
 mod_timer(&chip->timer, 1 + jiffies);
}
