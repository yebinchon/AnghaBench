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
typedef  int u32 ;
typedef  int u16 ;
struct echoaudio {int* dsp_code; int bad_board; int asic_loaded; int comm_page_phys; TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHI32_CONTROL_REG ; 
 int /*<<< orphan*/  CHI32_STATUS_REG ; 
 int CHI32_STATUS_REG_HF3 ; 
 int CHI32_STATUS_REG_HF4 ; 
 int DSP_FNC_SET_COMMPAGE_ADDR ; 
 int /*<<< orphan*/  DSP_VC_RESET ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct echoaudio*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct echoaudio*) ; 
 scalar_t__ FUNC5 (struct echoaudio*) ; 
 scalar_t__ FUNC6 (struct echoaudio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct echoaudio*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 (struct echoaudio*,int) ; 

__attribute__((used)) static int FUNC10(struct echoaudio *chip, u16 *code)
{
	u32 address, data;
	int index, words, i;

	if (chip->dsp_code == code) {
		FUNC2(chip->card->dev, "DSP is already loaded!\n");
		return 0;
	}
	chip->bad_board = true;		/* Set true until DSP loaded */
	chip->dsp_code = NULL;		/* Current DSP code not loaded */
	chip->asic_loaded = false;	/* Loading the DSP code will reset the ASIC */

	FUNC0(chip->card->dev, "load_dsp: Set bad_board to true\n");

	/* If this board requires a resident loader, install it. */
#ifdef DSP_56361
	if ((i = install_resident_loader(chip)) < 0)
		return i;
#endif

	/* Send software reset command */
	if (FUNC6(chip, DSP_VC_RESET) < 0) {
		FUNC1(chip->card->dev,
			"LoadDsp: send_vector DSP_VC_RESET failed, Critical Failure\n");
		return -EIO;
	}
	/* Delay 10us */
	FUNC8(10);

	/* Wait 10ms for HF3 to indicate that software reset is complete */
	for (i = 0; i < 1000; i++) {	/* Timeout is 10us * 1000 = 10ms */
		if (FUNC3(chip, CHI32_STATUS_REG) &
		    CHI32_STATUS_REG_HF3)
			break;
		FUNC8(10);
	}

	if (i == 1000) {
		FUNC1(chip->card->dev,
			"load_dsp: Timeout waiting for CHI32_STATUS_REG_HF3\n");
		return -EIO;
	}

	/* Set DSP format bits for 24 bit mode now that soft reset is done */
	FUNC7(chip, CHI32_CONTROL_REG,
			 FUNC3(chip, CHI32_CONTROL_REG) | 0x900);

	/* Main loader loop */

	index = code[0];
	for (;;) {
		int block_type, mem_type;

		/* Total Block Size */
		index++;

		/* Block Type */
		block_type = code[index];
		if (block_type == 4)	/* We're finished */
			break;

		index++;

		/* Memory Type  P=0,X=1,Y=2 */
		mem_type = code[index++];

		/* Block Code Size */
		words = code[index++];
		if (words == 0)		/* We're finished */
			break;

		/* Start Address */
		address = ((u32)code[index] << 16) + code[index + 1];
		index += 2;

		if (FUNC9(chip, words) < 0) {
			FUNC1(chip->card->dev,
				"load_dsp: failed to write number of DSP words\n");
			return -EIO;
		}
		if (FUNC9(chip, address) < 0) {
			FUNC1(chip->card->dev,
				"load_dsp: failed to write DSP address\n");
			return -EIO;
		}
		if (FUNC9(chip, mem_type) < 0) {
			FUNC1(chip->card->dev,
				"load_dsp: failed to write DSP memory type\n");
			return -EIO;
		}
		/* Code */
		for (i = 0; i < words; i++, index+=2) {
			data = ((u32)code[index] << 16) + code[index + 1];
			if (FUNC9(chip, data) < 0) {
				FUNC1(chip->card->dev,
					"load_dsp: failed to write DSP data\n");
				return -EIO;
			}
		}
	}

	if (FUNC9(chip, 0) < 0) {	/* We're done!!! */
		FUNC1(chip->card->dev,
			"load_dsp: Failed to write final zero\n");
		return -EIO;
	}
	FUNC8(10);

	for (i = 0; i < 5000; i++) {	/* Timeout is 100us * 5000 = 500ms */
		/* Wait for flag 4 - indicates that the DSP loaded OK */
		if (FUNC3(chip, CHI32_STATUS_REG) &
		    CHI32_STATUS_REG_HF4) {
			FUNC7(chip, CHI32_CONTROL_REG,
					 FUNC3(chip, CHI32_CONTROL_REG) & ~0x1b00);

			if (FUNC9(chip, DSP_FNC_SET_COMMPAGE_ADDR) < 0) {
				FUNC1(chip->card->dev,
					"load_dsp: Failed to write DSP_FNC_SET_COMMPAGE_ADDR\n");
				return -EIO;
			}

			if (FUNC9(chip, chip->comm_page_phys) < 0) {
				FUNC1(chip->card->dev,
					"load_dsp: Failed to write comm page address\n");
				return -EIO;
			}

			/* Get the serial number via slave mode.
			This is triggered by the SET_COMMPAGE_ADDR command.
			We don't actually use the serial number but we have to
			get it as part of the DSP init voodoo. */
			if (FUNC5(chip) < 0) {
				FUNC1(chip->card->dev,
					"load_dsp: Failed to read serial number\n");
				return -EIO;
			}

			chip->dsp_code = code;		/* Show which DSP code loaded */
			chip->bad_board = false;	/* DSP OK */
			return 0;
		}
		FUNC8(100);
	}

	FUNC1(chip->card->dev,
		"load_dsp: DSP load timed out waiting for HF4\n");
	return -EIO;
}