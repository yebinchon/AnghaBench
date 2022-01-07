
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wm_adsp {size_t fw; int running; int fatal_error; int pwr_lock; TYPE_1__* ops; int lock_regions; int booted; int boot_work; } ;
struct snd_soc_dapm_widget {size_t shift; int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {int num_caps; } ;
struct TYPE_3__ {int (* enable_core ) (struct wm_adsp*) ;int (* lock_memory ) (struct wm_adsp*,int ) ;int (* start_core ) (struct wm_adsp*) ;int (* disable_core ) (struct wm_adsp*) ;int (* stop_core ) (struct wm_adsp*) ;int (* show_fw_status ) (struct wm_adsp*) ;int (* stop_watchdog ) (struct wm_adsp*) ;} ;


 int EIO ;


 int WM_ADSP_FW_EVENT_SHUTDOWN ;
 int adsp_dbg (struct wm_adsp*,char*) ;
 int adsp_err (struct wm_adsp*,char*,int) ;
 int flush_work (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct wm_adsp* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;
 int stub1 (struct wm_adsp*) ;
 int stub2 (struct wm_adsp*,int ) ;
 int stub3 (struct wm_adsp*) ;
 int stub4 (struct wm_adsp*) ;
 int stub5 (struct wm_adsp*) ;
 int stub6 (struct wm_adsp*) ;
 int stub7 (struct wm_adsp*) ;
 int stub8 (struct wm_adsp*) ;
 int stub9 (struct wm_adsp*) ;
 int wm_adsp_buffer_free (struct wm_adsp*) ;
 int wm_adsp_buffer_init (struct wm_adsp*) ;
 TYPE_2__* wm_adsp_fw ;
 int wm_adsp_signal_event_controls (struct wm_adsp*,int ) ;
 int wm_coeff_sync_controls (struct wm_adsp*) ;

int wm_adsp_event(struct snd_soc_dapm_widget *w,
    struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct wm_adsp *dsps = snd_soc_component_get_drvdata(component);
 struct wm_adsp *dsp = &dsps[w->shift];
 int ret;

 switch (event) {
 case 129:
  flush_work(&dsp->boot_work);

  mutex_lock(&dsp->pwr_lock);

  if (!dsp->booted) {
   ret = -EIO;
   goto err;
  }

  if (dsp->ops->enable_core) {
   ret = dsp->ops->enable_core(dsp);
   if (ret != 0)
    goto err;
  }


  ret = wm_coeff_sync_controls(dsp);
  if (ret != 0)
   goto err;

  if (dsp->ops->lock_memory) {
   ret = dsp->ops->lock_memory(dsp, dsp->lock_regions);
   if (ret != 0) {
    adsp_err(dsp, "Error configuring MPU: %d\n",
      ret);
    goto err;
   }
  }

  if (dsp->ops->start_core) {
   ret = dsp->ops->start_core(dsp);
   if (ret != 0)
    goto err;
  }

  if (wm_adsp_fw[dsp->fw].num_caps != 0) {
   ret = wm_adsp_buffer_init(dsp);
   if (ret < 0)
    goto err;
  }

  dsp->running = 1;

  mutex_unlock(&dsp->pwr_lock);
  break;

 case 128:

  wm_adsp_signal_event_controls(dsp, WM_ADSP_FW_EVENT_SHUTDOWN);

  if (dsp->ops->stop_watchdog)
   dsp->ops->stop_watchdog(dsp);


  if (dsp->ops->show_fw_status)
   dsp->ops->show_fw_status(dsp);

  mutex_lock(&dsp->pwr_lock);

  dsp->running = 0;

  if (dsp->ops->stop_core)
   dsp->ops->stop_core(dsp);
  if (dsp->ops->disable_core)
   dsp->ops->disable_core(dsp);

  if (wm_adsp_fw[dsp->fw].num_caps != 0)
   wm_adsp_buffer_free(dsp);

  dsp->fatal_error = 0;

  mutex_unlock(&dsp->pwr_lock);

  adsp_dbg(dsp, "Execution stopped\n");
  break;

 default:
  break;
 }

 return 0;
err:
 if (dsp->ops->stop_core)
  dsp->ops->stop_core(dsp);
 if (dsp->ops->disable_core)
  dsp->ops->disable_core(dsp);
 mutex_unlock(&dsp->pwr_lock);
 return ret;
}
