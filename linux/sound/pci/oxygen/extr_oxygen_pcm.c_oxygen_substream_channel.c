
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct TYPE_2__ {scalar_t__ private_data; } ;



__attribute__((used)) static inline unsigned int
oxygen_substream_channel(struct snd_pcm_substream *substream)
{
 return (unsigned int)(uintptr_t)substream->runtime->private_data;
}
