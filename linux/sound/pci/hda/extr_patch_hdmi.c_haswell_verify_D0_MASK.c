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
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 int AC_PWRST_ACTUAL ; 
 int AC_PWRST_ACTUAL_SHIFT ; 
 int /*<<< orphan*/  AC_PWRST_D0 ; 
 int /*<<< orphan*/  AC_VERB_GET_POWER_STATE ; 
 int /*<<< orphan*/  AC_VERB_SET_POWER_STATE ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct hda_codec *codec,
		hda_nid_t cvt_nid, hda_nid_t nid)
{
	int pwr;

	/* For Haswell, the converter 1/2 may keep in D3 state after bootup,
	 * thus pins could only choose converter 0 for use. Make sure the
	 * converters are in correct power state */
	if (!FUNC2(codec, cvt_nid, AC_PWRST_D0))
		FUNC4(codec, cvt_nid, 0, AC_VERB_SET_POWER_STATE, AC_PWRST_D0);

	if (!FUNC2(codec, nid, AC_PWRST_D0)) {
		FUNC4(codec, nid, 0, AC_VERB_SET_POWER_STATE,
				    AC_PWRST_D0);
		FUNC1(40);
		pwr = FUNC3(codec, nid, 0, AC_VERB_GET_POWER_STATE, 0);
		pwr = (pwr & AC_PWRST_ACTUAL) >> AC_PWRST_ACTUAL_SHIFT;
		FUNC0(codec, "Haswell HDMI audio: Power for pin 0x%x is now D%d\n", nid, pwr);
	}
}