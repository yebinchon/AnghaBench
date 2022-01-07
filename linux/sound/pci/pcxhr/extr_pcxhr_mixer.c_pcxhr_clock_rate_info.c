
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int max; scalar_t__ min; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_info {TYPE_2__ value; scalar_t__ count; int type; } ;
struct pcxhr_mgr {scalar_t__ capture_chips; } ;


 int SNDRV_CTL_ELEM_TYPE_INTEGER ;
 struct pcxhr_mgr* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int pcxhr_clock_rate_info(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_info *uinfo)
{
 struct pcxhr_mgr *mgr = snd_kcontrol_chip(kcontrol);
 uinfo->type = SNDRV_CTL_ELEM_TYPE_INTEGER;
 uinfo->count = 3 + mgr->capture_chips;
 uinfo->value.integer.min = 0;
 uinfo->value.integer.max = 192000;
 return 0;
}
