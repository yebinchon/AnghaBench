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
typedef  int u32 ;
struct snd_soc_dai {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct img_spdif_in {int trk; int* aclkgen_regs; int /*<<< orphan*/  lock; scalar_t__ active; } ;

/* Variables and functions */
 int EBUSY ; 
 int IMG_SPDIF_IN_ACLKGEN_TRK_MASK ; 
 int IMG_SPDIF_IN_ACLKGEN_TRK_SHIFT ; 
 int /*<<< orphan*/  IMG_SPDIF_IN_CTL ; 
 int IMG_SPDIF_IN_CTL_TRK_MASK ; 
 int IMG_SPDIF_IN_CTL_TRK_SHIFT ; 
 int IMG_SPDIF_IN_NUM_ACLKGEN ; 
 int /*<<< orphan*/  FUNC0 (struct img_spdif_in*,int) ; 
 int FUNC1 (struct img_spdif_in*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct img_spdif_in*,int,int /*<<< orphan*/ ) ; 
 struct snd_soc_dai* FUNC3 (struct snd_kcontrol*) ; 
 struct img_spdif_in* FUNC4 (struct snd_soc_dai*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct snd_kcontrol *kcontrol,
				  struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_dai *cpu_dai = FUNC3(kcontrol);
	struct img_spdif_in *spdif = FUNC4(cpu_dai);
	unsigned long flags;
	int i;
	u32 reg;

	FUNC5(&spdif->lock, flags);

	if (spdif->active) {
		FUNC6(&spdif->lock, flags);
		return -EBUSY;
	}

	spdif->trk = ucontrol->value.integer.value[0];

	reg = FUNC1(spdif, IMG_SPDIF_IN_CTL);
	reg &= ~IMG_SPDIF_IN_CTL_TRK_MASK;
	reg |= spdif->trk << IMG_SPDIF_IN_CTL_TRK_SHIFT;
	FUNC2(spdif, reg, IMG_SPDIF_IN_CTL);

	for (i = 0; i < IMG_SPDIF_IN_NUM_ACLKGEN; i++) {
		spdif->aclkgen_regs[i] = (spdif->aclkgen_regs[i] &
			~IMG_SPDIF_IN_ACLKGEN_TRK_MASK) |
			(spdif->trk << IMG_SPDIF_IN_ACLKGEN_TRK_SHIFT);

		FUNC0(spdif, i);
	}

	FUNC6(&spdif->lock, flags);

	return 0;
}