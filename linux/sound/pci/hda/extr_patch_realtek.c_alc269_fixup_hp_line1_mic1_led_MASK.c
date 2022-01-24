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
struct hda_codec {struct alc_spec* spec; } ;
struct alc_spec {int cap_mute_led_nid; } ;

/* Variables and functions */
 int HDA_FIXUP_ACT_PRE_PROBE ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,struct hda_fixup const*,int,int) ; 
 int /*<<< orphan*/  alc_cap_micmute_update ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct hda_codec *codec,
				const struct hda_fixup *fix, int action)
{
	struct alc_spec *spec = codec->spec;

	FUNC0(codec, fix, action, 0x1a);
	if (action == HDA_FIXUP_ACT_PRE_PROBE) {
		spec->cap_mute_led_nid = 0x18;
		FUNC1(codec, alc_cap_micmute_update);
	}
}