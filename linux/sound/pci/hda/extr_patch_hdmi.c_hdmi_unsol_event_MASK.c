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
struct hda_codec {int dummy; } ;

/* Variables and functions */
 unsigned int AC_UNSOL_RES_SUBTAG ; 
 unsigned int AC_UNSOL_RES_SUBTAG_SHIFT ; 
 unsigned int AC_UNSOL_RES_TAG_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,char*,int) ; 
 scalar_t__ FUNC1 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*,int) ; 

__attribute__((used)) static void FUNC5(struct hda_codec *codec, unsigned int res)
{
	int tag = res >> AC_UNSOL_RES_TAG_SHIFT;
	int subtag = (res & AC_UNSOL_RES_SUBTAG) >> AC_UNSOL_RES_SUBTAG_SHIFT;

	if (FUNC1(codec))
		return;

	if (!FUNC4(codec, tag)) {
		FUNC0(codec, "Unexpected HDMI event tag 0x%x\n", tag);
		return;
	}

	if (subtag == 0)
		FUNC2(codec, res);
	else
		FUNC3(codec, res);
}