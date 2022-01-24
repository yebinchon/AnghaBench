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
struct hda_fixup {int dummy; } ;
struct hda_codec {int /*<<< orphan*/  addr; TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  longname; } ;

/* Variables and functions */
#define  HDA_FIXUP_ACT_BUILD 129 
#define  HDA_FIXUP_ACT_PRE_PROBE 128 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,struct hda_fixup const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC3(struct hda_codec *codec,
					 const struct hda_fixup *fix,
					 int action)
{
	FUNC0(codec, fix, action);
	switch (action) {
	case HDA_FIXUP_ACT_PRE_PROBE:
		/* override card longname to provide a unique UCM profile */
		FUNC2(codec->card->longname, "HDAudio-Lenovo-DualCodecs");
		break;
	case HDA_FIXUP_ACT_BUILD:
		/* rename Capture controls depending on the codec */
		FUNC1(codec, "Capture Volume",
			   codec->addr == 0 ?
			   "Rear-Panel Capture Volume" :
			   "Front-Panel Capture Volume");
		FUNC1(codec, "Capture Switch",
			   codec->addr == 0 ?
			   "Rear-Panel Capture Switch" :
			   "Front-Panel Capture Switch");
		break;
	}
}