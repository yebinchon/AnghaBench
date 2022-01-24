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
 int /*<<< orphan*/  DSP_FNC_LOAD_LAYLA24_EXTERNAL_ASIC ; 
 int /*<<< orphan*/  DSP_FNC_LOAD_LAYLA24_PCI_CARD_ASIC ; 
 int /*<<< orphan*/  FW_LAYLA24_1_ASIC ; 
 int /*<<< orphan*/  FW_LAYLA24_2S_ASIC ; 
 int GML_48KHZ ; 
 int GML_CONVERTER_ENABLE ; 
 int FUNC0 (struct echoaudio*) ; 
 int FUNC1 (struct echoaudio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct echoaudio*,int,int) ; 

__attribute__((used)) static int FUNC4(struct echoaudio *chip)
{
	int err;

	if (chip->asic_loaded)
		return 1;


	/* Give the DSP a few milliseconds to settle down */
	FUNC2(10);

	/* Load the ASIC for the PCI card */
	err = FUNC1(chip, DSP_FNC_LOAD_LAYLA24_PCI_CARD_ASIC,
				FW_LAYLA24_1_ASIC);
	if (err < 0)
		return err;

	chip->asic_code = FW_LAYLA24_2S_ASIC;

	/* Now give the new ASIC a little time to set up */
	FUNC2(10);

	/* Do the external one */
	err = FUNC1(chip, DSP_FNC_LOAD_LAYLA24_EXTERNAL_ASIC,
				FW_LAYLA24_2S_ASIC);
	if (err < 0)
		return err;

	/* Now give the external ASIC a little time to set up */
	FUNC2(10);

	/* See if it worked */
	err = FUNC0(chip);

	/* Set up the control register if the load succeeded -
	   48 kHz, internal clock, S/PDIF RCA mode */
	if (!err)
		err = FUNC3(chip, GML_CONVERTER_ENABLE | GML_48KHZ,
					true);
	
	return err;
}