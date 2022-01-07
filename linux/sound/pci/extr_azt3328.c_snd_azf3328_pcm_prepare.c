
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dma_addr; int channels; int format; int rate; struct snd_azf3328_codec_data* private_data; } ;
struct snd_azf3328_codec_data {int dma_base; } ;


 int chip ;
 int snd_azf3328_codec_setdmaa (int ,struct snd_azf3328_codec_data*,int ,unsigned int,unsigned int) ;
 int snd_azf3328_codec_setfmt (struct snd_azf3328_codec_data*,int ,int ,int ) ;
 int snd_pcm_format_width (int ) ;
 unsigned int snd_pcm_lib_buffer_bytes (struct snd_pcm_substream*) ;
 unsigned int snd_pcm_lib_period_bytes (struct snd_pcm_substream*) ;

__attribute__((used)) static int
snd_azf3328_pcm_prepare(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_azf3328_codec_data *codec = runtime->private_data;





 codec->dma_base = runtime->dma_addr;
 return 0;
}
