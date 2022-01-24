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
struct hda_fixup {int dummy; } ;
struct hda_codec {int dummy; } ;
struct hda_alc298_mbxinit {int member_0; int member_1; scalar_t__ value_0x23; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_VERB_SET_COEF_INDEX ; 
 int /*<<< orphan*/  AC_VERB_SET_DIGI_CONVERT_3 ; 
 int /*<<< orphan*/  AC_VERB_SET_PROC_COEF ; 
 int HDA_FIXUP_ACT_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,struct hda_alc298_mbxinit const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct hda_codec *codec,
					   const struct hda_fixup *fix,
					   int action)
{
	/* Initialization magic */
	static const struct hda_alc298_mbxinit dac_init[] = {
		{0x0c, 0x00}, {0x0d, 0x00}, {0x0e, 0x00}, {0x0f, 0x00},
		{0x10, 0x00}, {0x1a, 0x40}, {0x1b, 0x82}, {0x1c, 0x00},
		{0x1d, 0x00}, {0x1e, 0x00}, {0x1f, 0x00},
		{0x20, 0xc2}, {0x21, 0xc8}, {0x22, 0x26}, {0x23, 0x24},
		{0x27, 0xff}, {0x28, 0xff}, {0x29, 0xff}, {0x2a, 0x8f},
		{0x2b, 0x02}, {0x2c, 0x48}, {0x2d, 0x34}, {0x2e, 0x00},
		{0x2f, 0x00},
		{0x30, 0x00}, {0x31, 0x00}, {0x32, 0x00}, {0x33, 0x00},
		{0x34, 0x00}, {0x35, 0x01}, {0x36, 0x93}, {0x37, 0x0c},
		{0x38, 0x00}, {0x39, 0x00}, {0x3a, 0xf8}, {0x38, 0x80},
		{}
	};
	const struct hda_alc298_mbxinit *seq;

	if (action != HDA_FIXUP_ACT_INIT)
		return;

	/* Start */
	FUNC2(codec, 0x06, 0, AC_VERB_SET_DIGI_CONVERT_3, 0x00);
	FUNC2(codec, 0x06, 0, AC_VERB_SET_DIGI_CONVERT_3, 0x80);
	FUNC1(codec, 0x26, 0xf000);
	FUNC1(codec, 0x22, 0x31);
	FUNC1(codec, 0x23, 0x0b);
	FUNC1(codec, 0x25, 0x00);
	FUNC2(codec, 0x20, 0, AC_VERB_SET_COEF_INDEX, 0x26);
	FUNC2(codec, 0x20, 0, AC_VERB_SET_PROC_COEF, 0xb010);

	for (seq = dac_init; seq->value_0x23; seq++)
		FUNC0(codec, seq, seq == dac_init);
}