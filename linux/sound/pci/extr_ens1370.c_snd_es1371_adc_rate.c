
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ensoniq {int src_mutex; } ;


 scalar_t__ ES_SMPREG_ADC ;
 scalar_t__ ES_SMPREG_INT_REGS ;
 scalar_t__ ES_SMPREG_TRUNC_N ;
 scalar_t__ ES_SMPREG_VFREQ_FRAC ;
 scalar_t__ ES_SMPREG_VOL_ADC ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_es1371_src_read (struct ensoniq*,scalar_t__) ;
 int snd_es1371_src_write (struct ensoniq*,scalar_t__,unsigned int) ;

__attribute__((used)) static void snd_es1371_adc_rate(struct ensoniq * ensoniq, unsigned int rate)
{
 unsigned int n, truncm, freq;

 mutex_lock(&ensoniq->src_mutex);
 n = rate / 3000;
 if ((1 << n) & ((1 << 15) | (1 << 13) | (1 << 11) | (1 << 9)))
  n--;
 truncm = (21 * n - 1) | 1;
 freq = ((48000UL << 15) / rate) * n;
 if (rate >= 24000) {
  if (truncm > 239)
   truncm = 239;
  snd_es1371_src_write(ensoniq, ES_SMPREG_ADC + ES_SMPREG_TRUNC_N,
    (((239 - truncm) >> 1) << 9) | (n << 4));
 } else {
  if (truncm > 119)
   truncm = 119;
  snd_es1371_src_write(ensoniq, ES_SMPREG_ADC + ES_SMPREG_TRUNC_N,
    0x8000 | (((119 - truncm) >> 1) << 9) | (n << 4));
 }
 snd_es1371_src_write(ensoniq, ES_SMPREG_ADC + ES_SMPREG_INT_REGS,
        (snd_es1371_src_read(ensoniq, ES_SMPREG_ADC +
        ES_SMPREG_INT_REGS) & 0x00ff) |
        ((freq >> 5) & 0xfc00));
 snd_es1371_src_write(ensoniq, ES_SMPREG_ADC + ES_SMPREG_VFREQ_FRAC, freq & 0x7fff);
 snd_es1371_src_write(ensoniq, ES_SMPREG_VOL_ADC, n << 8);
 snd_es1371_src_write(ensoniq, ES_SMPREG_VOL_ADC + 1, n << 8);
 mutex_unlock(&ensoniq->src_mutex);
}
