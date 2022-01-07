
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxygen {int dummy; } ;


 int CS4245_LOAD_FROM_SHADOW ;
 int GPIO_OUTPUT_ENABLE ;
 int OXYGEN_GPIO_DATA ;
 int cs4245_shadow_control (struct oxygen*,int ) ;
 int msleep (int) ;
 int oxygen_set_bits16 (struct oxygen*,int ,int ) ;

void dg_resume(struct oxygen *chip)
{
 cs4245_shadow_control(chip, CS4245_LOAD_FROM_SHADOW);
 msleep(2500);
 oxygen_set_bits16(chip, OXYGEN_GPIO_DATA, GPIO_OUTPUT_ENABLE);
}
