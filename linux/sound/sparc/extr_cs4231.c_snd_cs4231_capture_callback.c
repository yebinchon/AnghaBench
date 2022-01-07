
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_cs4231 {int* image; int c_periods_sent; int capture_substream; int c_dma; } ;


 size_t CS4231_IFACE_CTRL ;
 int CS4231_RECORD_ENABLE ;
 int snd_cs4231_advance_dma (int *,int ,int *) ;
 int snd_pcm_period_elapsed (int ) ;

__attribute__((used)) static void snd_cs4231_capture_callback(struct snd_cs4231 *chip)
{
 if (chip->image[CS4231_IFACE_CTRL] & CS4231_RECORD_ENABLE) {
  snd_pcm_period_elapsed(chip->capture_substream);
  snd_cs4231_advance_dma(&chip->c_dma, chip->capture_substream,
         &chip->c_periods_sent);
 }
}
