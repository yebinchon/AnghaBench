
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct soc_mixer_control {unsigned int reg; unsigned int shift; unsigned int max; unsigned int invert; unsigned int rreg; unsigned int rshift; } ;
struct snd_soc_dapm_path {int connect; TYPE_2__* sink; } ;
struct TYPE_4__ {int dapm; TYPE_1__* kcontrol_news; } ;
struct TYPE_3__ {scalar_t__ private_value; } ;


 unsigned int SND_SOC_NOPM ;
 int fls (unsigned int) ;
 scalar_t__ snd_soc_volsw_is_stereo (struct soc_mixer_control*) ;
 int soc_dapm_read (int ,unsigned int,unsigned int*) ;

__attribute__((used)) static void dapm_set_mixer_path_status(struct snd_soc_dapm_path *p, int i,
           int nth_path)
{
 struct soc_mixer_control *mc = (struct soc_mixer_control *)
  p->sink->kcontrol_news[i].private_value;
 unsigned int reg = mc->reg;
 unsigned int shift = mc->shift;
 unsigned int max = mc->max;
 unsigned int mask = (1 << fls(max)) - 1;
 unsigned int invert = mc->invert;
 unsigned int val;

 if (reg != SND_SOC_NOPM) {
  soc_dapm_read(p->sink->dapm, reg, &val);
  if (snd_soc_volsw_is_stereo(mc) && nth_path > 0) {
   if (reg != mc->rreg)
    soc_dapm_read(p->sink->dapm, mc->rreg, &val);
   val = (val >> mc->rshift) & mask;
  } else {
   val = (val >> shift) & mask;
  }
  if (invert)
   val = max - val;
  p->connect = !!val;
 } else {
  p->connect = 0;
 }
}
