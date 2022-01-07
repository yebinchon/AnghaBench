
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int snd_pcm_format_t ;


 unsigned int TDM_CHANNEL_BCK_16 ;
 unsigned int TDM_CHANNEL_BCK_32 ;
 int snd_pcm_format_physical_width (int ) ;

__attribute__((used)) static unsigned int get_tdm_channel_bck(snd_pcm_format_t format)
{
 return snd_pcm_format_physical_width(format) <= 16 ?
        TDM_CHANNEL_BCK_16 : TDM_CHANNEL_BCK_32;
}
