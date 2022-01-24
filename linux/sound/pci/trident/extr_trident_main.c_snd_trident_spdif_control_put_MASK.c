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
struct snd_trident {unsigned char spdif_ctrl; scalar_t__ device; unsigned int spdif_bits; int /*<<< orphan*/  reg_lock; int /*<<< orphan*/ * spdif; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 scalar_t__ NX_SPCSTATUS ; 
 scalar_t__ NX_SPCTRL_SPCSO ; 
 scalar_t__ SI_SERIAL_INTF_CTRL ; 
 scalar_t__ SI_SPDIF_CS ; 
 unsigned int SPDIF_EN ; 
 scalar_t__ TRIDENT_DEVICE_ID_SI7018 ; 
 int /*<<< orphan*/  FUNC0 (struct snd_trident*,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 struct snd_trident* FUNC5 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct snd_kcontrol *kcontrol,
					 struct snd_ctl_elem_value *ucontrol)
{
	struct snd_trident *trident = FUNC5(kcontrol);
	unsigned char val;
	int change;

	val = ucontrol->value.integer.value[0] ? (unsigned char) kcontrol->private_value : 0x00;
	FUNC6(&trident->reg_lock);
	/* S/PDIF C Channel bits 0-31 : 48khz, SCMS disabled */
	change = trident->spdif_ctrl != val;
	trident->spdif_ctrl = val;
	if (trident->device != TRIDENT_DEVICE_ID_SI7018) {
		if ((FUNC1(FUNC0(trident, NX_SPCTRL_SPCSO + 3)) & 0x10) == 0) {
			FUNC4(trident->spdif_bits, FUNC0(trident, NX_SPCSTATUS));
			FUNC3(trident->spdif_ctrl, FUNC0(trident, NX_SPCTRL_SPCSO + 3));
		}
	} else {
		if (trident->spdif == NULL) {
			unsigned int temp;
			FUNC4(trident->spdif_bits, FUNC0(trident, SI_SPDIF_CS));
			temp = FUNC2(FUNC0(trident, SI_SERIAL_INTF_CTRL)) & ~SPDIF_EN;
			if (val)
				temp |= SPDIF_EN;
			FUNC4(temp, FUNC0(trident, SI_SERIAL_INTF_CTRL));
		}
	}
	FUNC7(&trident->reg_lock);
	return change;
}