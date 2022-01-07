
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int snd_soc_calc_frame_size (int,int,int) ;

int snd_soc_calc_bclk(int fs, int sample_size, int channels, int tdm_slots)
{
 return fs * snd_soc_calc_frame_size(sample_size, channels, tdm_slots);
}
