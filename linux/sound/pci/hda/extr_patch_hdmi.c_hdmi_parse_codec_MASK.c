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
struct TYPE_2__ {int /*<<< orphan*/  afg; } ;
struct hda_codec {TYPE_1__ core; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 unsigned int AC_WCAP_DIGITAL ; 
#define  AC_WID_AUD_OUT 129 
#define  AC_WID_PIN 128 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,char*) ; 
 unsigned int FUNC1 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct hda_codec *codec)
{
	hda_nid_t nid;
	int i, nodes;

	nodes = FUNC5(codec, codec->core.afg, &nid);
	if (!nid || nodes < 0) {
		FUNC0(codec, "HDMI: failed to get afg sub nodes\n");
		return -EINVAL;
	}

	for (i = 0; i < nodes; i++, nid++) {
		unsigned int caps;
		unsigned int type;

		caps = FUNC1(codec, nid);
		type = FUNC2(caps);

		if (!(caps & AC_WCAP_DIGITAL))
			continue;

		switch (type) {
		case AC_WID_AUD_OUT:
			FUNC3(codec, nid);
			break;
		case AC_WID_PIN:
			FUNC4(codec, nid);
			break;
		}
	}

	return 0;
}