#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  (* setup_rate ) (struct snd_ice1712*,unsigned int) ;} ;
struct TYPE_9__ {TYPE_3__ ops; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* set_pro_rate ) (struct snd_ice1712*,unsigned int) ;} ;
struct snd_ice1712 {unsigned int cur_rate; unsigned int akm_codecs; TYPE_4__ spdif; TYPE_5__* akm; TYPE_1__ gpio; int /*<<< orphan*/  reg_lock; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* set_rate_val ) (TYPE_5__*,unsigned int) ;} ;
struct TYPE_10__ {TYPE_2__ ops; } ;

/* Variables and functions */
 int ICE1712_CAPTURE_START_SHADOW ; 
 int ICE1712_PLAYBACK_PAUSE ; 
 int ICE1712_PLAYBACK_START ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PLAYBACK_CONTROL ; 
 int /*<<< orphan*/  RATE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct snd_ice1712*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_ice1712*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_ice1712*,unsigned int) ; 

__attribute__((used)) static void FUNC10(struct snd_ice1712 *ice, unsigned int rate, int force)
{
	unsigned long flags;
	unsigned char val, old;
	unsigned int i;

	switch (rate) {
	case 8000: val = 6; break;
	case 9600: val = 3; break;
	case 11025: val = 10; break;
	case 12000: val = 2; break;
	case 16000: val = 5; break;
	case 22050: val = 9; break;
	case 24000: val = 1; break;
	case 32000: val = 4; break;
	case 44100: val = 8; break;
	case 48000: val = 0; break;
	case 64000: val = 15; break;
	case 88200: val = 11; break;
	case 96000: val = 7; break;
	default:
		FUNC4();
		val = 0;
		rate = 48000;
		break;
	}

	FUNC5(&ice->reg_lock, flags);
	if (FUNC1(FUNC0(ice, PLAYBACK_CONTROL)) & (ICE1712_CAPTURE_START_SHADOW|
						 ICE1712_PLAYBACK_PAUSE|
						 ICE1712_PLAYBACK_START)) {
__out:
		FUNC6(&ice->reg_lock, flags);
		return;
	}
	if (!force && FUNC2(ice))
		goto __out;

	old = FUNC1(FUNC0(ice, RATE));
	if (!force && old == val)
		goto __out;

	ice->cur_rate = rate;
	FUNC3(val, FUNC0(ice, RATE));
	FUNC6(&ice->reg_lock, flags);

	if (ice->gpio.set_pro_rate)
		ice->gpio.set_pro_rate(ice, rate);
	for (i = 0; i < ice->akm_codecs; i++) {
		if (ice->akm[i].ops.set_rate_val)
			ice->akm[i].ops.set_rate_val(&ice->akm[i], rate);
	}
	if (ice->spdif.ops.setup_rate)
		ice->spdif.ops.setup_rate(ice, rate);
}