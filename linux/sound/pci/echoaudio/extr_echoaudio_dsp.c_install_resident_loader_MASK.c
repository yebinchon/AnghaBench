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
struct firmware {scalar_t__ data; } ;
struct echoaudio {scalar_t__ device_id; TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHI32_CONTROL_REG ; 
 int /*<<< orphan*/  CHI32_STATUS_REG ; 
 int CHI32_STATUS_REG_HF5 ; 
 scalar_t__ DEVICE_ID_56361 ; 
 int EIO ; 
 int /*<<< orphan*/  FW_361_LOADER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct firmware const*,struct echoaudio*) ; 
 int FUNC4 (struct echoaudio*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct firmware const**,struct echoaudio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct echoaudio*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (struct echoaudio*,int) ; 

__attribute__((used)) static int FUNC9(struct echoaudio *chip)
{
	u32 address;
	int index, words, i;
	u16 *code;
	u32 status;
	const struct firmware *fw;

	/* 56361 cards only!  This check is required by the old 56301-based
	Mona and Gina24 */
	if (chip->device_id != DEVICE_ID_56361)
		return 0;

	/* Look to see if the resident loader is present.  If the resident
	loader is already installed, host flag 5 will be on. */
	status = FUNC4(chip, CHI32_STATUS_REG);
	if (status & CHI32_STATUS_REG_HF5) {
		FUNC0(chip->card->dev,
			"Resident loader already installed; status is 0x%x\n",
			 status);
		return 0;
	}

	i = FUNC5(&fw, chip, FW_361_LOADER);
	if (i < 0) {
		FUNC2(chip->card->dev, "Firmware not found !\n");
		return i;
	}

	/* The DSP code is an array of 16 bit words.  The array is divided up
	into sections.  The first word of each section is the size in words,
	followed by the section type.
	Since DSP addresses and data are 24 bits wide, they each take up two
	16 bit words in the array.
	This is a lot like the other loader loop, but it's not a loop, you
	don't write the memory type, and you don't write a zero at the end. */

	/* Set DSP format bits for 24 bit mode */
	FUNC6(chip, CHI32_CONTROL_REG,
			 FUNC4(chip, CHI32_CONTROL_REG) | 0x900);

	code = (u16 *)fw->data;

	/* Skip the header section; the first word in the array is the size
	of the first section, so the first real section of code is pointed
	to by Code[0]. */
	index = code[0];

	/* Skip the section size, LRS block type, and DSP memory type */
	index += 3;

	/* Get the number of DSP words to write */
	words = code[index++];

	/* Get the DSP address for this block; 24 bits, so build from two words */
	address = ((u32)code[index] << 16) + code[index + 1];
	index += 2;

	/* Write the count to the DSP */
	if (FUNC8(chip, words)) {
		FUNC1(chip->card->dev,
			"install_resident_loader: Failed to write word count!\n");
		goto irl_error;
	}
	/* Write the DSP address */
	if (FUNC8(chip, address)) {
		FUNC1(chip->card->dev,
			"install_resident_loader: Failed to write DSP address!\n");
		goto irl_error;
	}
	/* Write out this block of code to the DSP */
	for (i = 0; i < words; i++) {
		u32 data;

		data = ((u32)code[index] << 16) + code[index + 1];
		if (FUNC8(chip, data)) {
			FUNC1(chip->card->dev,
				"install_resident_loader: Failed to write DSP code\n");
			goto irl_error;
		}
		index += 2;
	}

	/* Wait for flag 5 to come up */
	for (i = 0; i < 200; i++) {	/* Timeout is 50us * 200 = 10ms */
		FUNC7(50);
		status = FUNC4(chip, CHI32_STATUS_REG);
		if (status & CHI32_STATUS_REG_HF5)
			break;
	}

	if (i == 200) {
		FUNC1(chip->card->dev, "Resident loader failed to set HF5\n");
		goto irl_error;
	}

	FUNC0(chip->card->dev, "Resident loader successfully installed\n");
	FUNC3(fw, chip);
	return 0;

irl_error:
	FUNC3(fw, chip);
	return -EIO;
}