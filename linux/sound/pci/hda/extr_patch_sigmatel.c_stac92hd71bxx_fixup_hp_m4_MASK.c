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
struct sigmatel_spec {int gpio_mask; } ;
struct hda_jack_callback {int private_data; } ;
struct hda_fixup {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  afg; } ;
struct hda_codec {TYPE_1__ core; struct sigmatel_spec* spec; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_VERB_SET_GPIO_UNSOLICITED_RSP_MASK ; 
 int HDA_FIXUP_ACT_PRE_PROBE ; 
 int /*<<< orphan*/  FUNC0 (struct hda_jack_callback*) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct hda_jack_callback* FUNC3 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stac_vref_event ; 

__attribute__((used)) static void FUNC4(struct hda_codec *codec,
				      const struct hda_fixup *fix, int action)
{
	struct sigmatel_spec *spec = codec->spec;
	struct hda_jack_callback *jack;

	if (action != HDA_FIXUP_ACT_PRE_PROBE)
		return;

	/* Enable VREF power saving on GPIO1 detect */
	FUNC2(codec, codec->core.afg, 0,
				  AC_VERB_SET_GPIO_UNSOLICITED_RSP_MASK, 0x02);
	jack = FUNC3(codec, codec->core.afg,
						   stac_vref_event);
	if (!FUNC0(jack))
		jack->private_data = 0x02;

	spec->gpio_mask |= 0x02;

	/* enable internal microphone */
	FUNC1(codec, 0x0e, 0x01813040);
}