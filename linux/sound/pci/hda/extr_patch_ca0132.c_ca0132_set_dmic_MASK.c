#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {int dmic_ctl; int /*<<< orphan*/ * input_pins; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONTROL_FLAG_DMIC ; 
 unsigned int FLOAT_ONE ; 
 unsigned int FLOAT_TWO ; 
 int /*<<< orphan*/  VENDOR_CHIPIO_DMIC_CTL_SET ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC6 (struct hda_codec*) ; 

__attribute__((used)) static void FUNC7(struct hda_codec *codec, int enable)
{
	struct ca0132_spec *spec = codec->spec;
	unsigned int tmp;
	u8 val;
	unsigned int oldval;

	FUNC2(codec, "ca0132_set_dmic: enable=%d\n", enable);

	oldval = FUNC6(codec);
	FUNC0(codec, 0);
	if (enable) {
		/* set DMic input as 2-ch */
		tmp = FLOAT_TWO;
		FUNC3(codec, 0x80, 0x00, tmp);

		val = spec->dmic_ctl;
		val |= 0x80;
		FUNC5(codec, spec->input_pins[0], 0,
				    VENDOR_CHIPIO_DMIC_CTL_SET, val);

		if (!(spec->dmic_ctl & 0x20))
			FUNC1(codec, CONTROL_FLAG_DMIC, 1);
	} else {
		/* set AMic input as mono */
		tmp = FLOAT_ONE;
		FUNC3(codec, 0x80, 0x00, tmp);

		val = spec->dmic_ctl;
		/* clear bit7 and bit5 to disable dmic */
		val &= 0x5f;
		FUNC5(codec, spec->input_pins[0], 0,
				    VENDOR_CHIPIO_DMIC_CTL_SET, val);

		if (!(spec->dmic_ctl & 0x20))
			FUNC1(codec, CONTROL_FLAG_DMIC, 0);
	}
	FUNC0(codec, 1);
	FUNC4(codec, oldval);
}