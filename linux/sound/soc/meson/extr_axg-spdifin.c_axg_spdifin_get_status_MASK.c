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
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {unsigned int* status; } ;
struct TYPE_4__ {TYPE_1__ iec958; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct axg_spdifin {int /*<<< orphan*/  map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SPDIFIN_CTRL0 ; 
 int /*<<< orphan*/  SPDIFIN_CTRL0_STATUS_SEL ; 
 int /*<<< orphan*/  SPDIFIN_STAT1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct snd_soc_component* FUNC3 (struct snd_kcontrol*) ; 
 struct axg_spdifin* FUNC4 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol,
				  struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *c = FUNC3(kcontrol);
	struct axg_spdifin *priv = FUNC4(c);
	int i, j;

	for (i = 0; i < 6; i++) {
		unsigned int val;

		FUNC2(priv->map, SPDIFIN_CTRL0,
				   SPDIFIN_CTRL0_STATUS_SEL,
				   FUNC0(SPDIFIN_CTRL0_STATUS_SEL, i));

		FUNC1(priv->map, SPDIFIN_STAT1, &val);

		for (j = 0; j < 4; j++) {
			unsigned int offset = i * 4 + j;

			ucontrol->value.iec958.status[offset] =
				(val >> (j * 8)) & 0xff;
		}
	}

	return 0;
}