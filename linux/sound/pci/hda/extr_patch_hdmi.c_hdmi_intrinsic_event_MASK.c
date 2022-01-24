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
struct hda_jack_tbl {int jack_dirty; int /*<<< orphan*/  nid; } ;
struct hda_codec {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 unsigned int AC_UNSOL_RES_DE ; 
 unsigned int AC_UNSOL_RES_DE_SHIFT ; 
 unsigned int AC_UNSOL_RES_ELDV ; 
 unsigned int AC_UNSOL_RES_IA ; 
 unsigned int AC_UNSOL_RES_PD ; 
 unsigned int AC_UNSOL_RES_TAG_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int) ; 
 struct hda_jack_tbl* FUNC2 (struct hda_codec*,int) ; 

__attribute__((used)) static void FUNC3(struct hda_codec *codec, unsigned int res)
{
	int tag = res >> AC_UNSOL_RES_TAG_SHIFT;
	struct hda_jack_tbl *jack;
	int dev_entry = (res & AC_UNSOL_RES_DE) >> AC_UNSOL_RES_DE_SHIFT;

	/*
	 * assume DP MST uses dyn_pcm_assign and acomp and
	 * never comes here
	 * if DP MST supports unsol event, below code need
	 * consider dev_entry
	 */
	jack = FUNC2(codec, tag);
	if (!jack)
		return;
	jack->jack_dirty = 1;

	FUNC1(codec,
		"HDMI hot plug event: Codec=%d Pin=%d Device=%d Inactive=%d Presence_Detect=%d ELD_Valid=%d\n",
		codec->addr, jack->nid, dev_entry, !!(res & AC_UNSOL_RES_IA),
		!!(res & AC_UNSOL_RES_PD), !!(res & AC_UNSOL_RES_ELDV));

	/* hda_jack don't support DP MST */
	FUNC0(codec, jack->nid, 0);
}