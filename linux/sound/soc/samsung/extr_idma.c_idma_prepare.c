
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct idma_ctrl {int start; int pos; } ;
struct TYPE_2__ {struct idma_ctrl* private_data; } ;


 int LPAM_DMA_STOP ;
 int idma_control (int ) ;
 int idma_enqueue (struct snd_pcm_substream*) ;

__attribute__((used)) static int idma_prepare(struct snd_pcm_substream *substream)
{
 struct idma_ctrl *prtd = substream->runtime->private_data;

 prtd->pos = prtd->start;


 idma_control(LPAM_DMA_STOP);
 idma_enqueue(substream);

 return 0;
}
