
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct idma_ctrl {void (* cb ) (void*,int) ;int lock; } ;
struct TYPE_2__ {struct idma_ctrl* private_data; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void idma_setcallbk(struct snd_pcm_substream *substream,
    void (*cb)(void *, int))
{
 struct idma_ctrl *prtd = substream->runtime->private_data;

 spin_lock(&prtd->lock);
 prtd->cb = cb;
 spin_unlock(&prtd->lock);
}
