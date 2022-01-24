#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_dai {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {unsigned int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct img_spdif_in {int multi_freq; int /*<<< orphan*/  lock; scalar_t__ active; } ;

/* Variables and functions */
 int EBUSY ; 
 int IMG_SPDIF_IN_NUM_ACLKGEN ; 
 int FUNC0 (struct img_spdif_in*,unsigned int*) ; 
 struct snd_soc_dai* FUNC1 (struct snd_kcontrol*) ; 
 struct img_spdif_in* FUNC2 (struct snd_soc_dai*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol,
				  struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_dai *cpu_dai = FUNC1(kcontrol);
	struct img_spdif_in *spdif = FUNC2(cpu_dai);
	unsigned int multi_freqs[IMG_SPDIF_IN_NUM_ACLKGEN];
	bool multi_freq;
	unsigned long flags;

	if ((ucontrol->value.integer.value[0] == 0) &&
			(ucontrol->value.integer.value[1] == 0) &&
			(ucontrol->value.integer.value[2] == 0) &&
			(ucontrol->value.integer.value[3] == 0)) {
		multi_freq = false;
	} else {
		multi_freqs[0] = ucontrol->value.integer.value[0];
		multi_freqs[1] = ucontrol->value.integer.value[1];
		multi_freqs[2] = ucontrol->value.integer.value[2];
		multi_freqs[3] = ucontrol->value.integer.value[3];
		multi_freq = true;
	}

	if (multi_freq)
		return FUNC0(spdif, multi_freqs);

	FUNC3(&spdif->lock, flags);

	if (spdif->active) {
		FUNC4(&spdif->lock, flags);
		return -EBUSY;
	}

	spdif->multi_freq = false;

	FUNC4(&spdif->lock, flags);

	return 0;
}