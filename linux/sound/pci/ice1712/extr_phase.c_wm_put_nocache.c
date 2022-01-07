
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;


 int PHASE28_WM_CS ;
 int phase28_spi_write (struct snd_ice1712*,int ,int,int) ;

__attribute__((used)) static void wm_put_nocache(struct snd_ice1712 *ice, int reg, unsigned short val)
{
 phase28_spi_write(ice, PHASE28_WM_CS, (reg << 9) | (val & 0x1ff), 16);
}
