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
struct sigmatel_spec {int num_pwrs; int /*<<< orphan*/  power_map_bits; scalar_t__* pwr_nids; } ;
struct hda_jack_callback {scalar_t__ nid; } ;
struct TYPE_2__ {int /*<<< orphan*/  afg; } ;
struct hda_codec {TYPE_1__ core; struct sigmatel_spec* spec; } ;
typedef  scalar_t__ hda_nid_t ;

/* Variables and functions */
 int /*<<< orphan*/  AC_VERB_IDT_SET_POWER_MAP ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,scalar_t__,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct hda_codec *codec,
			      struct hda_jack_callback *jack)
{
	struct sigmatel_spec *spec = codec->spec;
	int i;

	if (!spec->num_pwrs)
		return;

	if (jack && jack->nid) {
		FUNC3(codec, jack->nid,
				      FUNC1(codec, jack->nid),
				      true);
		return;
	}

	/* update all jacks */
	for (i = 0; i < spec->num_pwrs; i++) {
		hda_nid_t nid = spec->pwr_nids[i];
		if (!FUNC2(codec, nid))
			continue;
		FUNC3(codec, nid,
				      FUNC1(codec, nid),
				      false);
	}

	FUNC0(codec, codec->core.afg, 0,
			    AC_VERB_IDT_SET_POWER_MAP,
			    spec->power_map_bits);
}