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
struct hda_multi_out {scalar_t__ dig_out_used; int /*<<< orphan*/  dig_out_nid; } ;
struct hda_codec {int /*<<< orphan*/  spdif_mutex; } ;

/* Variables and functions */
 scalar_t__ HDA_DIG_ANALOG_DUP ; 
 scalar_t__ HDA_DIG_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct hda_codec *codec,
			       struct hda_multi_out *mout)
{
	FUNC1(&codec->spdif_mutex);
	if (mout->dig_out_used == HDA_DIG_ANALOG_DUP)
		/* already opened as analog dup; reset it once */
		FUNC0(codec, mout->dig_out_nid);
	mout->dig_out_used = HDA_DIG_EXCLUSIVE;
	FUNC2(&codec->spdif_mutex);
	return 0;
}