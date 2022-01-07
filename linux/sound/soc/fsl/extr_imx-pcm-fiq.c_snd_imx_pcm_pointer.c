
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct imx_pcm_runtime_data* private_data; } ;
struct imx_pcm_runtime_data {int offset; } ;
typedef int snd_pcm_uframes_t ;


 int bytes_to_frames (struct snd_pcm_runtime*,int ) ;

__attribute__((used)) static snd_pcm_uframes_t snd_imx_pcm_pointer(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct imx_pcm_runtime_data *iprtd = runtime->private_data;

 return bytes_to_frames(substream->runtime, iprtd->offset);
}
