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
struct snd_kcontrol {int dummy; } ;
struct snd_emu10k1 {unsigned int i2c_capture_source; unsigned int** i2c_capture_volume; int /*<<< orphan*/  emu_lock; scalar_t__ port; } ;
struct TYPE_3__ {unsigned int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
typedef  int ngain ;

/* Variables and functions */
 int /*<<< orphan*/  ADC_ATTEN_ADCL ; 
 int /*<<< orphan*/  ADC_ATTEN_ADCR ; 
 int /*<<< orphan*/  ADC_MUX ; 
 scalar_t__ A_IOCFG ; 
 int EINVAL ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_emu10k1*,int /*<<< orphan*/ ,int) ; 
 struct snd_emu10k1* FUNC3 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct snd_kcontrol *kcontrol,
					struct snd_ctl_elem_value *ucontrol)
{
	struct snd_emu10k1 *emu = FUNC3(kcontrol);
	unsigned int source_id;
	unsigned int ngain, ogain;
	u32 gpio;
	int change = 0;
	unsigned long flags;
	u32 source;
	/* If the capture source has changed,
	 * update the capture volume from the cached value
	 * for the particular source.
	 */
	source_id = ucontrol->value.enumerated.item[0];
	/* Limit: uinfo->value.enumerated.items = 2; */
	/*        emu->i2c_capture_volume */
	if (source_id >= 2)
		return -EINVAL;
	change = (emu->i2c_capture_source != source_id);
	if (change) {
		FUNC2(emu, ADC_MUX, 0); /* Mute input */
		FUNC4(&emu->emu_lock, flags);
		gpio = FUNC0(emu->port + A_IOCFG);
		if (source_id==0)
			FUNC1(gpio | 0x4, emu->port + A_IOCFG);
		else
			FUNC1(gpio & ~0x4, emu->port + A_IOCFG);
		FUNC5(&emu->emu_lock, flags);

		ngain = emu->i2c_capture_volume[source_id][0]; /* Left */
		ogain = emu->i2c_capture_volume[emu->i2c_capture_source][0]; /* Left */
		if (ngain != ogain)
			FUNC2(emu, ADC_ATTEN_ADCL, ((ngain) & 0xff));
		ngain = emu->i2c_capture_volume[source_id][1]; /* Right */
		ogain = emu->i2c_capture_volume[emu->i2c_capture_source][1]; /* Right */
		if (ngain != ogain)
			FUNC2(emu, ADC_ATTEN_ADCR, ((ngain) & 0xff));

		source = 1 << (source_id + 2);
		FUNC2(emu, ADC_MUX, source); /* Set source */
		emu->i2c_capture_source = source_id;
	}
        return change;
}