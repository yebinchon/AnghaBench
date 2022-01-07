
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct special_params {scalar_t__ ctl_id_sync; } ;
struct snd_bebob {int card; int unit; struct special_params* maudio_special_quirk; } ;


 int AVC_GENERAL_PLUG_DIR_IN ;
 int AVC_GENERAL_PLUG_DIR_OUT ;
 int SNDRV_CTL_EVENT_MASK_VALUE ;
 int avc_general_set_sig_fmt (int ,unsigned int,int ,int ) ;
 int msleep (int) ;
 int snd_ctl_notify (int ,int ,scalar_t__) ;

__attribute__((used)) static int special_set_rate(struct snd_bebob *bebob, unsigned int rate)
{
 struct special_params *params = bebob->maudio_special_quirk;
 int err;

 err = avc_general_set_sig_fmt(bebob->unit, rate,
          AVC_GENERAL_PLUG_DIR_OUT, 0);
 if (err < 0)
  goto end;





 msleep(100);

 err = avc_general_set_sig_fmt(bebob->unit, rate,
          AVC_GENERAL_PLUG_DIR_IN, 0);
 if (err < 0)
  goto end;

 if (params->ctl_id_sync)
  snd_ctl_notify(bebob->card, SNDRV_CTL_EVENT_MASK_VALUE,
          params->ctl_id_sync);
end:
 return err;
}
