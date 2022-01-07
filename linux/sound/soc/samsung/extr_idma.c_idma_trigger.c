
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct idma_ctrl {int lock; int state; } ;
struct TYPE_2__ {struct idma_ctrl* private_data; } ;


 int EINVAL ;
 int LPAM_DMA_START ;
 int LPAM_DMA_STOP ;






 int ST_RUNNING ;
 int idma_control (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int idma_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct idma_ctrl *prtd = substream->runtime->private_data;
 int ret = 0;

 spin_lock(&prtd->lock);

 switch (cmd) {
 case 131:
 case 130:
 case 132:
  prtd->state |= ST_RUNNING;
  idma_control(LPAM_DMA_START);
  break;

 case 128:
 case 129:
 case 133:
  prtd->state &= ~ST_RUNNING;
  idma_control(LPAM_DMA_STOP);
  break;

 default:
  ret = -EINVAL;
  break;
 }

 spin_unlock(&prtd->lock);

 return ret;
}
