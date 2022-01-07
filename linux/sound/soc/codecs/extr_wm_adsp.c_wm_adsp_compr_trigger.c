
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wm_adsp_compr {int buf; struct wm_adsp* dsp; } ;
struct wm_adsp {int pwr_lock; } ;
struct snd_compr_stream {TYPE_1__* runtime; } ;
struct TYPE_2__ {struct wm_adsp_compr* private_data; } ;


 int EINVAL ;
 int HOST_BUFFER_FIELD (int ) ;


 int compr_dbg (struct wm_adsp_compr*,char*,int) ;
 int compr_err (struct wm_adsp_compr*,char*,int) ;
 int high_water_mark ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wm_adsp_buffer_clear (int ) ;
 int wm_adsp_buffer_get_error (int ) ;
 int wm_adsp_buffer_write (int ,int ,int ) ;
 int wm_adsp_compr_attach (struct wm_adsp_compr*) ;
 int wm_adsp_compr_attached (struct wm_adsp_compr*) ;
 int wm_adsp_compr_frag_words (struct wm_adsp_compr*) ;

int wm_adsp_compr_trigger(struct snd_compr_stream *stream, int cmd)
{
 struct wm_adsp_compr *compr = stream->runtime->private_data;
 struct wm_adsp *dsp = compr->dsp;
 int ret = 0;

 compr_dbg(compr, "Trigger: %d\n", cmd);

 mutex_lock(&dsp->pwr_lock);

 switch (cmd) {
 case 129:
  if (!wm_adsp_compr_attached(compr)) {
   ret = wm_adsp_compr_attach(compr);
   if (ret < 0) {
    compr_err(compr, "Failed to link buffer and stream: %d\n",
       ret);
    break;
   }
  }

  ret = wm_adsp_buffer_get_error(compr->buf);
  if (ret < 0)
   break;


  ret = wm_adsp_buffer_write(compr->buf,
        HOST_BUFFER_FIELD(high_water_mark),
        wm_adsp_compr_frag_words(compr));
  if (ret < 0) {
   compr_err(compr, "Failed to set high water mark: %d\n",
      ret);
   break;
  }
  break;
 case 128:
  if (wm_adsp_compr_attached(compr))
   wm_adsp_buffer_clear(compr->buf);
  break;
 default:
  ret = -EINVAL;
  break;
 }

 mutex_unlock(&dsp->pwr_lock);

 return ret;
}
