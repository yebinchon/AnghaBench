
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtpav {int timer; } ;


 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

__attribute__((used)) static void snd_mtpav_add_output_timer(struct mtpav *chip)
{
 mod_timer(&chip->timer, 1 + jiffies);
}
