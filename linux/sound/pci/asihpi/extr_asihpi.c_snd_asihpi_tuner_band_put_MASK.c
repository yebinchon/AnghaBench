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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct snd_kcontrol {int /*<<< orphan*/  private_value; } ;
struct TYPE_3__ {unsigned int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int HPI_TUNER_BAND_LAST ; 
 int /*<<< orphan*/  FUNC1 (struct snd_kcontrol*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *kcontrol,
				 struct snd_ctl_elem_value *ucontrol)
{
	/*
	struct snd_card_asihpi *asihpi = snd_kcontrol_chip(kcontrol);
	*/
	u32 h_control = kcontrol->private_value;
	unsigned int idx;
	u16 band;
	u16 tuner_bands[HPI_TUNER_BAND_LAST];
	u32 num_bands = 0;

	num_bands = FUNC1(kcontrol, tuner_bands,
			HPI_TUNER_BAND_LAST);

	idx = ucontrol->value.enumerated.item[0];
	if (idx >= FUNC0(tuner_bands))
		idx = FUNC0(tuner_bands) - 1;
	band = tuner_bands[idx];
	FUNC2(FUNC3(h_control, band));

	return 1;
}