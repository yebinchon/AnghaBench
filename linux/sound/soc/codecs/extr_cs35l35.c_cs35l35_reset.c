
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs35l35_private {int reset_gpio; } ;


 int gpiod_set_value_cansleep (int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void cs35l35_reset(struct cs35l35_private *cs35l35)
{
 gpiod_set_value_cansleep(cs35l35->reset_gpio, 0);
 usleep_range(2000, 2100);
 gpiod_set_value_cansleep(cs35l35->reset_gpio, 1);
 usleep_range(1000, 1100);
}
