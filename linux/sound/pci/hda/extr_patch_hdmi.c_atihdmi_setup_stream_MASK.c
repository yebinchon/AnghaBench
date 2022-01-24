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
typedef  int /*<<< orphan*/  u32 ;
struct hda_codec {int dummy; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 int AC_FMT_TYPE_NON_PCM ; 
 int /*<<< orphan*/  ATI_VERB_SET_RAMP_RATE ; 
 int FUNC0 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct hda_codec *codec, hda_nid_t cvt_nid,
				hda_nid_t pin_nid, u32 stream_tag, int format)
{

	if (FUNC1(codec)) {
		int ramp_rate = 180; /* default as per AMD spec */
		/* disable ramp-up/down for non-pcm as per AMD spec */
		if (format & AC_FMT_TYPE_NON_PCM)
			ramp_rate = 0;

		FUNC2(codec, cvt_nid, 0, ATI_VERB_SET_RAMP_RATE, ramp_rate);
	}

	return FUNC0(codec, cvt_nid, pin_nid, stream_tag, format);
}