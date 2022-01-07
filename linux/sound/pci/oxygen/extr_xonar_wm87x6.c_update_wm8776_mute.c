
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxygen {scalar_t__ dac_mute; } ;


 int WM8776_DACMUTE ;
 int WM8776_DMUTE ;
 int wm8776_write_cached (struct oxygen*,int ,int ) ;

__attribute__((used)) static void update_wm8776_mute(struct oxygen *chip)
{
 wm8776_write_cached(chip, WM8776_DACMUTE,
       chip->dac_mute ? WM8776_DMUTE : 0);
}
