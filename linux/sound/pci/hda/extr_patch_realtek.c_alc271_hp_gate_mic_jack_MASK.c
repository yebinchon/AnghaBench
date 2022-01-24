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
struct alc_spec {int dummy; } ;

/* Variables and functions */
 int HDA_FIXUP_ACT_PROBE ; 
 int FUNC0 (struct alc_spec*) ; 
 int FUNC1 (struct hda_codec*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,int,int) ; 

__attribute__((used)) static void FUNC4(struct hda_codec *codec,
				    const struct hda_fixup *fix,
				    int action)
{
	struct alc_spec *spec = codec->spec;

	if (action == HDA_FIXUP_ACT_PROBE) {
		int mic_pin = FUNC1(codec);
		int hp_pin = FUNC0(spec);

		if (FUNC2(!mic_pin || !hp_pin))
			return;
		FUNC3(codec, mic_pin, hp_pin);
	}
}