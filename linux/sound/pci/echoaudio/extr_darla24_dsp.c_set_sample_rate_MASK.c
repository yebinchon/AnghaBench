#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct echoaudio {scalar_t__ input_clock; TYPE_2__* comm_page; int /*<<< orphan*/  sample_rate; TYPE_1__* card; } ;
struct TYPE_4__ {int /*<<< orphan*/  gd_clock_state; int /*<<< orphan*/  sample_rate; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSP_VC_SET_GD_AUDIO_STATE ; 
 scalar_t__ ECHO_CLOCK_ESYNC ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  GD24_11025 ; 
 int /*<<< orphan*/  GD24_16000 ; 
 int /*<<< orphan*/  GD24_22050 ; 
 int /*<<< orphan*/  GD24_32000 ; 
 int /*<<< orphan*/  GD24_44100 ; 
 int /*<<< orphan*/  GD24_48000 ; 
 int /*<<< orphan*/  GD24_8000 ; 
 int /*<<< orphan*/  GD24_88200 ; 
 int /*<<< orphan*/  GD24_96000 ; 
 int /*<<< orphan*/  GD24_EXT_SYNC ; 
 int /*<<< orphan*/  FUNC0 (struct echoaudio*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct echoaudio*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct echoaudio*) ; 

__attribute__((used)) static int FUNC6(struct echoaudio *chip, u32 rate)
{
	u8 clock;

	switch (rate) {
	case 96000:
		clock = GD24_96000;
		break;
	case 88200:
		clock = GD24_88200;
		break;
	case 48000:
		clock = GD24_48000;
		break;
	case 44100:
		clock = GD24_44100;
		break;
	case 32000:
		clock = GD24_32000;
		break;
	case 22050:
		clock = GD24_22050;
		break;
	case 16000:
		clock = GD24_16000;
		break;
	case 11025:
		clock = GD24_11025;
		break;
	case 8000:
		clock = GD24_8000;
		break;
	default:
		FUNC3(chip->card->dev,
			"set_sample_rate: Error, invalid sample rate %d\n",
			rate);
		return -EINVAL;
	}

	if (FUNC5(chip))
		return -EIO;

	FUNC2(chip->card->dev,
		"set_sample_rate: %d clock %d\n", rate, clock);
	chip->sample_rate = rate;

	/* Override the sample rate if this card is set to Echo sync. */
	if (chip->input_clock == ECHO_CLOCK_ESYNC)
		clock = GD24_EXT_SYNC;

	chip->comm_page->sample_rate = FUNC1(rate);	/* ignored by the DSP ? */
	chip->comm_page->gd_clock_state = clock;
	FUNC0(chip);
	return FUNC4(chip, DSP_VC_SET_GD_AUDIO_STATE);
}