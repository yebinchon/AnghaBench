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
struct hda_codec {int /*<<< orphan*/  jackpoll_interval; scalar_t__ no_jack_detect; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 int AC_DEFCFG_MISC_NO_PRESENCE ; 
 int AC_PINCAP_PRES_DETECT ; 
 int AC_WCAP_UNSOL_CAP ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct hda_codec*,int /*<<< orphan*/ ) ; 

bool FUNC4(struct hda_codec *codec, hda_nid_t nid)
{
	if (codec->no_jack_detect)
		return false;
	if (!(FUNC3(codec, nid) & AC_PINCAP_PRES_DETECT))
		return false;
	if (FUNC0(FUNC2(codec, nid)) &
	     AC_DEFCFG_MISC_NO_PRESENCE)
		return false;
	if (!(FUNC1(codec, nid) & AC_WCAP_UNSOL_CAP) &&
	    !codec->jackpoll_interval)
		return false;
	return true;
}