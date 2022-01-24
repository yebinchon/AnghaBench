#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct echoaudio {int /*<<< orphan*/  output_clock; int /*<<< orphan*/  input_clock; int /*<<< orphan*/  phantom_power; int /*<<< orphan*/  professional_spdif; int /*<<< orphan*/  digital_mode; scalar_t__ meters_enabled; int /*<<< orphan*/  sample_rate; int /*<<< orphan*/ * input_gain; int /*<<< orphan*/ ** monitor_gain; int /*<<< orphan*/ ** vmixer_gain; int /*<<< orphan*/ * output_gain; TYPE_1__* comm_page; } ;
struct TYPE_2__ {int /*<<< orphan*/  handshake; int /*<<< orphan*/  gd_spdif_status; int /*<<< orphan*/  gd_clock_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSP_VC_METERS_ON ; 
 int /*<<< orphan*/  DSP_VC_UPDATE_FLAGS ; 
 int EIO ; 
 int /*<<< orphan*/  GD_CLOCK_UNDEF ; 
 int /*<<< orphan*/  GD_SPDIF_STATUS_UNDEF ; 
 int FUNC0 (struct echoaudio*) ; 
 int /*<<< orphan*/  FUNC1 (struct echoaudio*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct echoaudio*) ; 
 int FUNC4 (struct echoaudio*) ; 
 int FUNC5 (struct echoaudio*) ; 
 int FUNC6 (struct echoaudio*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct echoaudio*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct echoaudio*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct echoaudio*,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct echoaudio*,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct echoaudio*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct echoaudio*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct echoaudio*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct echoaudio*,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct echoaudio*,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct echoaudio*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct echoaudio*) ; 
 int FUNC18 (struct echoaudio*) ; 
 scalar_t__ FUNC19 (struct echoaudio*) ; 
 scalar_t__ FUNC20 (struct echoaudio*) ; 

__attribute__((used)) static int FUNC21(struct echoaudio *chip)
{
	int i, o, err;

	if ((err = FUNC0(chip)) < 0)
		return err;

	/* Gina20/Darla20 only. Should be harmless for other cards. */
	chip->comm_page->gd_clock_state = GD_CLOCK_UNDEF;
	chip->comm_page->gd_spdif_status = GD_SPDIF_STATUS_UNDEF;
	chip->comm_page->handshake = FUNC2(0xffffffff);

	/* Restore output busses */
	for (i = 0; i < FUNC4(chip); i++) {
		err = FUNC12(chip, i, chip->output_gain[i]);
		if (err < 0)
			return err;
	}

#ifdef ECHOCARD_HAS_VMIXER
	for (i = 0; i < num_pipes_out(chip); i++)
		for (o = 0; o < num_busses_out(chip); o++) {
			err = set_vmixer_gain(chip, o, i,
						chip->vmixer_gain[o][i]);
			if (err < 0)
				return err;
		}
	if (update_vmixer_level(chip) < 0)
		return -EIO;
#endif /* ECHOCARD_HAS_VMIXER */

#ifdef ECHOCARD_HAS_MONITOR
	for (o = 0; o < num_busses_out(chip); o++)
		for (i = 0; i < num_busses_in(chip); i++) {
			err = set_monitor_gain(chip, o, i,
						chip->monitor_gain[o][i]);
			if (err < 0)
				return err;
		}
#endif /* ECHOCARD_HAS_MONITOR */

#ifdef ECHOCARD_HAS_INPUT_GAIN
	for (i = 0; i < num_busses_in(chip); i++) {
		err = set_input_gain(chip, i, chip->input_gain[i]);
		if (err < 0)
			return err;
	}
#endif /* ECHOCARD_HAS_INPUT_GAIN */

	err = FUNC18(chip);
	if (err < 0)
		return err;

	err = FUNC17(chip);
	if (err < 0)
		return err;

	err = FUNC15(chip, chip->sample_rate);
	if (err < 0)
		return err;

	if (chip->meters_enabled) {
		err = FUNC6(chip, DSP_VC_METERS_ON);
		if (err < 0)
			return err;
	}

#ifdef ECHOCARD_HAS_DIGITAL_MODE_SWITCH
	if (set_digital_mode(chip, chip->digital_mode) < 0)
		return -EIO;
#endif

#ifdef ECHOCARD_HAS_DIGITAL_IO
	if (set_professional_spdif(chip, chip->professional_spdif) < 0)
		return -EIO;
#endif

#ifdef ECHOCARD_HAS_PHANTOM_POWER
	if (set_phantom_power(chip, chip->phantom_power) < 0)
		return -EIO;
#endif

#ifdef ECHOCARD_HAS_EXTERNAL_CLOCK
	/* set_input_clock() also restores automute setting */
	if (set_input_clock(chip, chip->input_clock) < 0)
		return -EIO;
#endif

#ifdef ECHOCARD_HAS_OUTPUT_CLOCK_SWITCH
	if (set_output_clock(chip, chip->output_clock) < 0)
		return -EIO;
#endif

	if (FUNC20(chip) < 0)
		return -EIO;
	FUNC1(chip);
	if (FUNC6(chip, DSP_VC_UPDATE_FLAGS) < 0)
		return -EIO;

	return 0;
}