
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_tplg_stream_caps_v4 {int buffer_size_max; int buffer_size_min; int period_size_max; int period_size_min; int periods_max; int periods_min; int channels_max; int channels_min; int rate_max; int rate_min; int rates; int formats; int name; } ;
struct snd_soc_tplg_stream_caps {int buffer_size_max; int buffer_size_min; int period_size_max; int period_size_min; int periods_max; int periods_min; int channels_max; int channels_min; int rate_max; int rate_min; int rates; int formats; int name; int size; } ;


 int SNDRV_CTL_ELEM_ID_NAME_MAXLEN ;
 int cpu_to_le32 (int) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static void stream_caps_new_ver(struct snd_soc_tplg_stream_caps *dest,
    struct snd_soc_tplg_stream_caps_v4 *src)
{
 dest->size = cpu_to_le32(sizeof(*dest));
 memcpy(dest->name, src->name, SNDRV_CTL_ELEM_ID_NAME_MAXLEN);
 dest->formats = src->formats;
 dest->rates = src->rates;
 dest->rate_min = src->rate_min;
 dest->rate_max = src->rate_max;
 dest->channels_min = src->channels_min;
 dest->channels_max = src->channels_max;
 dest->periods_min = src->periods_min;
 dest->periods_max = src->periods_max;
 dest->period_size_min = src->period_size_min;
 dest->period_size_max = src->period_size_max;
 dest->buffer_size_min = src->buffer_size_min;
 dest->buffer_size_max = src->buffer_size_max;
}
