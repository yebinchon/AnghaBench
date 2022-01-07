
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct dmaengine_pcm_runtime_data {int dummy; } ;
struct TYPE_2__ {struct dmaengine_pcm_runtime_data* private_data; } ;



__attribute__((used)) static inline struct dmaengine_pcm_runtime_data *substream_to_prtd(
 const struct snd_pcm_substream *substream)
{
 return substream->runtime->private_data;
}
