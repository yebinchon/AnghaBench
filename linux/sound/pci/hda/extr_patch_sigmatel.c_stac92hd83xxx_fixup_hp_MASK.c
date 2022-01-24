#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int line_in_auto_switch; } ;
struct sigmatel_spec {TYPE_1__ gen; int /*<<< orphan*/  gpio_led_polarity; int /*<<< orphan*/  gpio_led; int /*<<< orphan*/  default_polarity; } ;
struct hda_fixup {int dummy; } ;
struct hda_codec {struct sigmatel_spec* spec; } ;

/* Variables and functions */
 int HDA_FIXUP_ACT_PRE_PROBE ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,int,int) ; 

__attribute__((used)) static void FUNC4(struct hda_codec *codec,
				   const struct hda_fixup *fix, int action)
{
	struct sigmatel_spec *spec = codec->spec;

	if (action != HDA_FIXUP_ACT_PRE_PROBE)
		return;

	if (FUNC2(codec)) {
		FUNC3(codec, 0xa, 0x2101201f);
		FUNC3(codec, 0xf, 0x2181205e);
	}

	if (FUNC1(codec, spec->default_polarity))
		FUNC0(codec, "mute LED gpio %d polarity %d\n",
				spec->gpio_led,
				spec->gpio_led_polarity);

	/* allow auto-switching of dock line-in */
	spec->gen.line_in_auto_switch = true;
}