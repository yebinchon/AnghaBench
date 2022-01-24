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
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {int mic_boost_enum_val; scalar_t__ in_enum_val; } ;

/* Variables and functions */
 unsigned int MIC_BOOST_NUM_OF_STEPS ; 
 scalar_t__ REAR_LINE_IN ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,char*,int) ; 
 struct hda_codec* FUNC2 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol,
				struct snd_ctl_elem_value *ucontrol)
{
	struct hda_codec *codec = FUNC2(kcontrol);
	struct ca0132_spec *spec = codec->spec;
	int sel = ucontrol->value.enumerated.item[0];
	unsigned int items = MIC_BOOST_NUM_OF_STEPS;

	if (sel >= items)
		return 0;

	FUNC1(codec, "ca0132_alt_mic_boost: boost=%d\n",
		    sel);

	spec->mic_boost_enum_val = sel;

	if (spec->in_enum_val != REAR_LINE_IN)
		FUNC0(codec, spec->mic_boost_enum_val);

	return 1;
}