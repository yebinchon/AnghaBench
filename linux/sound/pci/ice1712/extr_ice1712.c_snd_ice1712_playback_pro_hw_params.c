
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_ice1712 {int dummy; } ;


 int params_buffer_bytes (struct snd_pcm_hw_params*) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int snd_ice1712_set_pro_rate (struct snd_ice1712*,int ,int ) ;
 int snd_pcm_lib_malloc_pages (struct snd_pcm_substream*,int ) ;
 struct snd_ice1712* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_ice1712_playback_pro_hw_params(struct snd_pcm_substream *substream,
           struct snd_pcm_hw_params *hw_params)
{
 struct snd_ice1712 *ice = snd_pcm_substream_chip(substream);

 snd_ice1712_set_pro_rate(ice, params_rate(hw_params), 0);
 return snd_pcm_lib_malloc_pages(substream, params_buffer_bytes(hw_params));
}
