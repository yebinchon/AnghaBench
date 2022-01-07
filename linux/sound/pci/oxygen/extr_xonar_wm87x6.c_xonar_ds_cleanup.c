
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxygen {int dummy; } ;


 int WM8776_RESET ;
 int wm8776_write (struct oxygen*,int ,int ) ;
 int xonar_disable_output (struct oxygen*) ;

__attribute__((used)) static void xonar_ds_cleanup(struct oxygen *chip)
{
 xonar_disable_output(chip);
 wm8776_write(chip, WM8776_RESET, 0);
}
