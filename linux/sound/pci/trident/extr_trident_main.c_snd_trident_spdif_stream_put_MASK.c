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
struct snd_trident {unsigned int spdif_pcm_bits; scalar_t__ device; unsigned int spdif_bits; int /*<<< orphan*/  reg_lock; int /*<<< orphan*/ * spdif; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* status; } ;
struct TYPE_4__ {TYPE_1__ iec958; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int /*<<< orphan*/  NX_SPCSTATUS ; 
 int /*<<< orphan*/  SI_SPDIF_CS ; 
 scalar_t__ TRIDENT_DEVICE_ID_SI7018 ; 
 int /*<<< orphan*/  FUNC0 (struct snd_trident*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 struct snd_trident* FUNC2 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol,
					struct snd_ctl_elem_value *ucontrol)
{
	struct snd_trident *trident = FUNC2(kcontrol);
	unsigned int val;
	int change;

	val = (ucontrol->value.iec958.status[0] << 0) |
	      (ucontrol->value.iec958.status[1] << 8) |
	      (ucontrol->value.iec958.status[2] << 16) |
	      (ucontrol->value.iec958.status[3] << 24);
	FUNC3(&trident->reg_lock);
	change = trident->spdif_pcm_bits != val;
	trident->spdif_pcm_bits = val;
	if (trident->spdif != NULL) {
		if (trident->device != TRIDENT_DEVICE_ID_SI7018) {
			FUNC1(trident->spdif_pcm_bits, FUNC0(trident, NX_SPCSTATUS));
		} else {
			FUNC1(trident->spdif_bits, FUNC0(trident, SI_SPDIF_CS));
		}
	}
	FUNC4(&trident->reg_lock);
	return change;
}