
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_2__* pcm; } ;
struct TYPE_4__ {TYPE_1__* card; } ;
struct TYPE_3__ {int dev; } ;


 int dev_dbg (int ,char*) ;

__attribute__((used)) static int lx_pcm_close(struct snd_pcm_substream *substream)
{
 dev_dbg(substream->pcm->card->dev, "->lx_pcm_close\n");
 return 0;
}
