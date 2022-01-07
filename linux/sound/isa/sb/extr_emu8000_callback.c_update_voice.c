
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_emux_voice {TYPE_1__* port; struct snd_emu8000* hw; } ;
struct snd_emu8000 {int dummy; } ;
struct TYPE_2__ {scalar_t__* ctrls; } ;


 size_t EMUX_MD_REALTIME_PAN ;
 int SNDRV_EMUX_UPDATE_FM2FRQ2 ;
 int SNDRV_EMUX_UPDATE_FMMOD ;
 int SNDRV_EMUX_UPDATE_PAN ;
 int SNDRV_EMUX_UPDATE_PITCH ;
 int SNDRV_EMUX_UPDATE_Q ;
 int SNDRV_EMUX_UPDATE_TREMFREQ ;
 int SNDRV_EMUX_UPDATE_VOLUME ;
 int set_filterQ (struct snd_emu8000*,struct snd_emux_voice*) ;
 int set_fm2frq2 (struct snd_emu8000*,struct snd_emux_voice*) ;
 int set_fmmod (struct snd_emu8000*,struct snd_emux_voice*) ;
 int set_pan (struct snd_emu8000*,struct snd_emux_voice*) ;
 int set_pitch (struct snd_emu8000*,struct snd_emux_voice*) ;
 int set_tremfreq (struct snd_emu8000*,struct snd_emux_voice*) ;
 int set_volume (struct snd_emu8000*,struct snd_emux_voice*) ;

__attribute__((used)) static void
update_voice(struct snd_emux_voice *vp, int update)
{
 struct snd_emu8000 *hw;

 hw = vp->hw;
 if (update & SNDRV_EMUX_UPDATE_VOLUME)
  set_volume(hw, vp);
 if (update & SNDRV_EMUX_UPDATE_PITCH)
  set_pitch(hw, vp);
 if ((update & SNDRV_EMUX_UPDATE_PAN) &&
     vp->port->ctrls[EMUX_MD_REALTIME_PAN])
  set_pan(hw, vp);
 if (update & SNDRV_EMUX_UPDATE_FMMOD)
  set_fmmod(hw, vp);
 if (update & SNDRV_EMUX_UPDATE_TREMFREQ)
  set_tremfreq(hw, vp);
 if (update & SNDRV_EMUX_UPDATE_FM2FRQ2)
  set_fm2frq2(hw, vp);
 if (update & SNDRV_EMUX_UPDATE_Q)
  set_filterQ(hw, vp);
}
