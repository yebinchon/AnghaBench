
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct TYPE_2__ {int private_data; } ;


 int kfree (int ) ;

__attribute__((used)) static void dummy_systimer_free(struct snd_pcm_substream *substream)
{
 kfree(substream->runtime->private_data);
}
