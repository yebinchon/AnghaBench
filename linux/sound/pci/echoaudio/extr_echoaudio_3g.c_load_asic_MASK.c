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
struct echoaudio {int /*<<< orphan*/  asic_code; scalar_t__ asic_loaded; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSP_FNC_LOAD_3G_ASIC ; 
 int /*<<< orphan*/  E3G_48KHZ ; 
 int /*<<< orphan*/  E3G_FREQ_REG_DEFAULT ; 
 int /*<<< orphan*/  FW_3G_ASIC ; 
 int FUNC0 (struct echoaudio*) ; 
 int FUNC1 (struct echoaudio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct echoaudio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct echoaudio *chip)
{
	int box_type, err;

	if (chip->asic_loaded)
		return 0;

	/* Give the DSP a few milliseconds to settle down */
	FUNC2(2);

	err = FUNC1(chip, DSP_FNC_LOAD_3G_ASIC, FW_3G_ASIC);
	if (err < 0)
		return err;

	chip->asic_code = FW_3G_ASIC;

	/* Now give the new ASIC some time to set up */
	FUNC3(1000);
	/* See if it worked */
	box_type = FUNC0(chip);

	/* Set up the control register if the load succeeded -
	 * 48 kHz, internal clock, S/PDIF RCA mode */
	if (box_type >= 0) {
		err = FUNC4(chip, E3G_48KHZ,
					E3G_FREQ_REG_DEFAULT, true);
		if (err < 0)
			return err;
	}

	return box_type;
}