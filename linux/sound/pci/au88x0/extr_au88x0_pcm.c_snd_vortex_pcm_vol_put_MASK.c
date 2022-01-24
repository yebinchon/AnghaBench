#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/ * mixplayb; TYPE_4__* dma_adb; struct pcm_vol* pcm_vol; } ;
typedef  TYPE_5__ vortex_t ;
struct TYPE_9__ {int subdevice; } ;
struct snd_kcontrol {TYPE_1__ id; } ;
struct TYPE_10__ {unsigned char* value; } ;
struct TYPE_11__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_value {TYPE_3__ value; } ;
struct pcm_vol {unsigned char* vol; size_t dma; int* mixin; scalar_t__ active; } ;
struct TYPE_12__ {int nr_ch; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_5__*) ; 
 TYPE_5__* FUNC1 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ ,int,unsigned char) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol,
				struct snd_ctl_elem_value *ucontrol)
{
	int i;
	int changed = 0;
	int mixin;
	unsigned char vol;
	vortex_t *vortex = FUNC1(kcontrol);
	int subdev = kcontrol->id.subdevice;
	struct pcm_vol *p = &vortex->pcm_vol[subdev];
	int max_chn = (FUNC0(vortex) ? 4 : 2);
	for (i = 0; i < max_chn; i++) {
		if (p->vol[i] != ucontrol->value.integer.value[i]) {
			p->vol[i] = ucontrol->value.integer.value[i];
			if (p->active) {
				switch (vortex->dma_adb[p->dma].nr_ch) {
				case 1:
					mixin = p->mixin[0];
					break;
				case 2:
				default:
					mixin = p->mixin[(i < 2) ? i : (i - 2)];
					break;
				case 4:
					mixin = p->mixin[i];
					break;
				}
				vol = p->vol[i];
				FUNC2(vortex,
					vortex->mixplayb[i], mixin, vol);
			}
			changed = 1;
		}
	}
	return changed;
}