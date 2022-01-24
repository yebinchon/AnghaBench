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
struct hda_jack_callback {int dummy; } ;
struct hda_codec {int dummy; } ;

/* Variables and functions */
 scalar_t__ HDA_JACK_PRESENT ; 
 int /*<<< orphan*/  PIN_OUT ; 
 scalar_t__ FUNC0 (struct hda_codec*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct hda_codec *codec,
					struct hda_jack_callback *cb)
{
	/* surround speakers at 0x1b already get muted automatically when
	 * headphones are plugged in, but we have to mute/unmute the remaining
	 * channels manually:
	 * 0x15 - front left/front right
	 * 0x18 - front center/ LFE
	 */
	if (FUNC0(codec, 0x1b) == HDA_JACK_PRESENT) {
		FUNC1(codec, 0x15, 0);
		FUNC1(codec, 0x18, 0);
	} else {
		FUNC1(codec, 0x15, PIN_OUT);
		FUNC1(codec, 0x18, PIN_OUT);
	}
}