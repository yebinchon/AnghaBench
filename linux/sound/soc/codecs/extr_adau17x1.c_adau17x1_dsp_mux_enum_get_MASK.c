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
struct soc_enum {unsigned int shift_l; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {unsigned int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct adau {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 unsigned int ADAU17X1_SERIAL_INPUT_ROUTE ; 
 unsigned int ADAU17X1_SERIAL_OUTPUT_ROUTE ; 
 unsigned int SNDRV_PCM_STREAM_PLAYBACK ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned int,unsigned int*) ; 
 struct adau* FUNC1 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC2 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol,
	struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *component = FUNC2(kcontrol);
	struct adau *adau = FUNC1(component);
	struct soc_enum *e = (struct soc_enum *)kcontrol->private_value;
	unsigned int stream = e->shift_l;
	unsigned int reg, val;
	int ret;

	if (stream == SNDRV_PCM_STREAM_PLAYBACK)
		reg = ADAU17X1_SERIAL_INPUT_ROUTE;
	else
		reg = ADAU17X1_SERIAL_OUTPUT_ROUTE;

	ret = FUNC0(adau->regmap, reg, &val);
	if (ret)
		return ret;

	if (val != 0)
		val = 1;
	ucontrol->value.enumerated.item[0] = val;

	return 0;
}