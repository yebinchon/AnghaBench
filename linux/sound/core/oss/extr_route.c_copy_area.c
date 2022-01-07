
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_plugin_channel {int enabled; int area; } ;
typedef int snd_pcm_uframes_t ;
typedef int snd_pcm_format_t ;


 int snd_pcm_area_copy (int *,int ,int *,int ,int ,int ) ;

__attribute__((used)) static inline void copy_area(const struct snd_pcm_plugin_channel *src_channel,
        struct snd_pcm_plugin_channel *dst_channel,
        snd_pcm_uframes_t frames, snd_pcm_format_t format)
{
 dst_channel->enabled = 1;
 snd_pcm_area_copy(&src_channel->area, 0, &dst_channel->area, 0, frames, format);
}
