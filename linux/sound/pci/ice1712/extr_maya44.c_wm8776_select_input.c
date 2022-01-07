
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_maya44 {int * wm; int ice; } ;


 int WM8776_REG_ADC_MUX ;
 int wm8776_write_bits (int ,int *,int ,int,int) ;

__attribute__((used)) static void wm8776_select_input(struct snd_maya44 *chip, int idx, int line)
{
 wm8776_write_bits(chip->ice, &chip->wm[idx], WM8776_REG_ADC_MUX,
     0x1f, 1 << line);
}
