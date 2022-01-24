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
struct hda_jack_tbl {int jack_dirty; scalar_t__ gated_jack; int /*<<< orphan*/  pin_sense; scalar_t__ gating_jack; int /*<<< orphan*/  nid; scalar_t__ phantom_jack; } ;
struct hda_codec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_PINSENSE_PRESENCE ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,scalar_t__) ; 
 struct hda_jack_tbl* FUNC2 (struct hda_codec*,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct hda_codec *codec,
			       struct hda_jack_tbl *jack)
{
	if (!jack->jack_dirty)
		return;

	if (jack->phantom_jack)
		jack->pin_sense = AC_PINSENSE_PRESENCE;
	else
		jack->pin_sense = FUNC0(codec, jack->nid);

	/* A gating jack indicates the jack is invalid if gating is unplugged */
	if (jack->gating_jack && !FUNC1(codec, jack->gating_jack))
		jack->pin_sense &= ~AC_PINSENSE_PRESENCE;

	jack->jack_dirty = 0;

	/* If a jack is gated by this one update it. */
	if (jack->gated_jack) {
		struct hda_jack_tbl *gated =
			FUNC2(codec, jack->gated_jack);
		if (gated) {
			gated->jack_dirty = 1;
			FUNC3(codec, gated);
		}
	}
}