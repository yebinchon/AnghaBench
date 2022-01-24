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
struct snd_ice1712 {int num_total_dacs; int num_total_adcs; struct hoontech_spec* spec; } ;
struct hoontech_spec {int config; int* boxconfig; int /*<<< orphan*/  boxbits; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int ICE1712_STDSP24_BOX_CHN1 ; 
 int ICE1712_STDSP24_BOX_CHN2 ; 
 int ICE1712_STDSP24_BOX_CHN3 ; 
 int ICE1712_STDSP24_BOX_CHN4 ; 
 int ICE1712_STDSP24_BOX_MIDI1 ; 
 int ICE1712_STDSP24_BOX_MIDI2 ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int) ; 
 int ICE1712_STDSP24_DAREAR ; 
 int ICE1712_STDSP24_INSEL ; 
 int ICE1712_STDSP24_MUTE ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 struct hoontech_spec* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct snd_ice1712*,int,int,int) ; 
 int /*<<< orphan*/  FUNC15 (struct snd_ice1712*,int,int) ; 
 int /*<<< orphan*/  FUNC16 (struct snd_ice1712*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct snd_ice1712*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct snd_ice1712*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct snd_ice1712*,int) ; 

__attribute__((used)) static int FUNC20(struct snd_ice1712 *ice, bool staudio)
{
	struct hoontech_spec *spec;
	int box, chn;

	ice->num_total_dacs = 8;
	ice->num_total_adcs = 8;

	spec = FUNC13(sizeof(*spec), GFP_KERNEL);
	if (!spec)
		return -ENOMEM;
	ice->spec = spec;

	FUNC12(spec->boxbits, 0);
	FUNC11(spec->boxbits, 0, 1);
	FUNC0(spec->boxbits, 0);
	FUNC1(spec->boxbits, 0);

	FUNC12(spec->boxbits, 1);
	FUNC11(spec->boxbits, 1, 1);
	FUNC2(spec->boxbits, 1);
	FUNC3(spec->boxbits, 1);
	FUNC4(spec->boxbits, 1);
	
	FUNC12(spec->boxbits, 2);
	FUNC11(spec->boxbits, 2, 1);
	FUNC5(spec->boxbits, 1);
	FUNC7(spec->boxbits, 1);
	FUNC6(spec->boxbits, 0);

	FUNC12(spec->boxbits, 3);
	FUNC11(spec->boxbits, 3, 1);
	FUNC9(spec->boxbits, 0);
	FUNC10(spec->boxbits, 1);
	FUNC8(spec->boxbits, 0);

	/* let's go - activate only functions in first box */
	if (staudio)
		spec->config = ICE1712_STDSP24_MUTE;
	else
		spec->config = 0;
			    /* ICE1712_STDSP24_MUTE |
			       ICE1712_STDSP24_INSEL |
			       ICE1712_STDSP24_DAREAR; */
	/*  These boxconfigs have caused problems in the past.
	 *  The code is not optimal, but should now enable a working config to
	 *  be achieved.
	 *  ** MIDI IN can only be configured on one box **
	 *  ICE1712_STDSP24_BOX_MIDI1 needs to be set for that box.
	 *  Tests on a ADAC2000 box suggest the box config flags do not
	 *  work as would be expected, and the inputs are crossed.
	 *  Setting ICE1712_STDSP24_BOX_MIDI1 and ICE1712_STDSP24_BOX_MIDI2
	 *  on the same box connects MIDI-In to both 401 uarts; both outputs
	 *  are then active on all boxes.
	 *  The default config here sets up everything on the first box.
	 *  Alan Horstmann  5.2.2008
	 */
	spec->boxconfig[0] = ICE1712_STDSP24_BOX_CHN1 |
				     ICE1712_STDSP24_BOX_CHN2 |
				     ICE1712_STDSP24_BOX_CHN3 |
				     ICE1712_STDSP24_BOX_CHN4 |
				     ICE1712_STDSP24_BOX_MIDI1 |
				     ICE1712_STDSP24_BOX_MIDI2;
	if (staudio) {
		spec->boxconfig[1] =
		spec->boxconfig[2] =
		spec->boxconfig[3] = spec->boxconfig[0];
	} else {
		spec->boxconfig[1] =
		spec->boxconfig[2] =
		spec->boxconfig[3] = 0;
	}

	FUNC16(ice,
		(spec->config & ICE1712_STDSP24_DAREAR) ? 1 : 0);
	FUNC19(ice,
		(spec->config & ICE1712_STDSP24_MUTE) ? 1 : 0);
	FUNC17(ice,
		(spec->config & ICE1712_STDSP24_INSEL) ? 1 : 0);
	for (box = 0; box < 4; box++) {
		if (spec->boxconfig[box] & ICE1712_STDSP24_BOX_MIDI2)
                        FUNC18(ice, 1);
		for (chn = 0; chn < 4; chn++)
			FUNC14(ice, box, chn,
				(spec->boxconfig[box] & (1 << chn)) ? 1 : 0);
		if (spec->boxconfig[box] & ICE1712_STDSP24_BOX_MIDI1)
			FUNC15(ice, box, 1);
	}

	return 0;
}