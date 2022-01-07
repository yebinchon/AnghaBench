
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_stream {char* stream_name; int channels_min; int channels_max; int formats; int rates; } ;


 int SNDRV_PCM_FMTBIT_S16_LE ;
 int SNDRV_PCM_FMTBIT_S32_LE ;
 int SNDRV_PCM_RATE_8000_192000 ;

__attribute__((used)) static void stm32_i2s_dai_init(struct snd_soc_pcm_stream *stream,
          char *stream_name)
{
 stream->stream_name = stream_name;
 stream->channels_min = 1;
 stream->channels_max = 2;
 stream->rates = SNDRV_PCM_RATE_8000_192000;
 stream->formats = SNDRV_PCM_FMTBIT_S16_LE |
       SNDRV_PCM_FMTBIT_S32_LE;
}
