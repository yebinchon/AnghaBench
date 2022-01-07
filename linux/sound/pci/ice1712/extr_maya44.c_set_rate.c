
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_maya44 {int mutex; int * wm; } ;
struct snd_ice1712 {struct snd_maya44* spec; } ;


 unsigned int WM8776_CLOCK_RATIO_128FS ;
 unsigned int WM8776_CLOCK_RATIO_256FS ;
 unsigned int WM8776_CLOCK_RATIO_384FS ;
 unsigned int WM8776_CLOCK_RATIO_512FS ;
 unsigned int WM8776_CLOCK_RATIO_768FS ;
 int WM8776_REG_MASTER_MODE_CONTROL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_BUG () ;
 int wm8776_write_bits (struct snd_ice1712*,int *,int ,int,unsigned int) ;

__attribute__((used)) static void set_rate(struct snd_ice1712 *ice, unsigned int rate)
{
 struct snd_maya44 *chip = ice->spec;
 unsigned int ratio, adc_ratio, val;
 int i;

 switch (rate) {
 case 192000:
  ratio = WM8776_CLOCK_RATIO_128FS;
  break;
 case 176400:
  ratio = WM8776_CLOCK_RATIO_128FS;
  break;
 case 96000:
  ratio = WM8776_CLOCK_RATIO_256FS;
  break;
 case 88200:
  ratio = WM8776_CLOCK_RATIO_384FS;
  break;
 case 48000:
  ratio = WM8776_CLOCK_RATIO_512FS;
  break;
 case 44100:
  ratio = WM8776_CLOCK_RATIO_512FS;
  break;
 case 32000:
  ratio = WM8776_CLOCK_RATIO_768FS;
  break;
 case 0:

  return;
 default:
  snd_BUG();
  return;
 }







 adc_ratio = ratio;
 if (adc_ratio < WM8776_CLOCK_RATIO_256FS)
  adc_ratio = WM8776_CLOCK_RATIO_256FS;

 val = adc_ratio;
 if (adc_ratio == WM8776_CLOCK_RATIO_256FS)
  val |= 8;
 val |= ratio << 4;

 mutex_lock(&chip->mutex);
 for (i = 0; i < 2; i++)
  wm8776_write_bits(ice, &chip->wm[i],
      WM8776_REG_MASTER_MODE_CONTROL,
      0x180, val);
 mutex_unlock(&chip->mutex);
}
