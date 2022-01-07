
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wm_adsp_compr {struct wm_adsp_compr* raw_buf; int list; struct wm_adsp* dsp; } ;
struct wm_adsp {int pwr_lock; } ;
struct snd_compr_stream {TYPE_1__* runtime; } ;
struct TYPE_2__ {struct wm_adsp_compr* private_data; } ;


 int kfree (struct wm_adsp_compr*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wm_adsp_compr_detach (struct wm_adsp_compr*) ;

int wm_adsp_compr_free(struct snd_compr_stream *stream)
{
 struct wm_adsp_compr *compr = stream->runtime->private_data;
 struct wm_adsp *dsp = compr->dsp;

 mutex_lock(&dsp->pwr_lock);

 wm_adsp_compr_detach(compr);
 list_del(&compr->list);

 kfree(compr->raw_buf);
 kfree(compr);

 mutex_unlock(&dsp->pwr_lock);

 return 0;
}
