
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_2__* runtime; } ;
struct TYPE_3__ {struct snd_pcm_substream* substream; } ;
struct azx_dev {TYPE_1__ core; } ;
struct azx {int dummy; } ;
struct TYPE_4__ {int delay; } ;



__attribute__((used)) static int azx_get_delay_from_fifo(struct azx *chip, struct azx_dev *azx_dev,
       unsigned int pos)
{
 struct snd_pcm_substream *substream = azx_dev->core.substream;


 return substream->runtime->delay;
}
