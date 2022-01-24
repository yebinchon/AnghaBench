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
typedef  int u16 ;
struct echoaudio {int device_id; int subdevice_id; int bad_board; int asic_loaded; int /*<<< orphan*/  input_clock_types; int /*<<< orphan*/  clock_state; int /*<<< orphan*/  spdif_status; int /*<<< orphan*/  dsp_code_to_load; TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DARLA20 ; 
 int /*<<< orphan*/  ECHO_CLOCK_BIT_INTERNAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FW_DARLA20_DSP ; 
 int /*<<< orphan*/  GD_CLOCK_UNDEF ; 
 int /*<<< orphan*/  GD_SPDIF_STATUS_UNDEF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct echoaudio*) ; 
 int FUNC2 (struct echoaudio*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct echoaudio *chip, u16 device_id, u16 subdevice_id)
{
	int err;

	if (FUNC3((subdevice_id & 0xfff0) != DARLA20))
		return -ENODEV;

	if ((err = FUNC1(chip))) {
		FUNC0(chip->card->dev,
			"init_hw: could not initialize DSP comm page\n");
		return err;
	}

	chip->device_id = device_id;
	chip->subdevice_id = subdevice_id;
	chip->bad_board = true;
	chip->dsp_code_to_load = FW_DARLA20_DSP;
	chip->spdif_status = GD_SPDIF_STATUS_UNDEF;
	chip->clock_state = GD_CLOCK_UNDEF;
	/* Since this card has no ASIC, mark it as loaded so everything
	   works OK */
	chip->asic_loaded = true;
	chip->input_clock_types = ECHO_CLOCK_BIT_INTERNAL;

	if ((err = FUNC2(chip)) < 0)
		return err;
	chip->bad_board = false;

	return err;
}