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
typedef  size_t u8 ;
typedef  size_t u32 ;
struct firmware {size_t size; scalar_t__ data; } ;
struct echoaudio {TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct firmware const*,struct echoaudio*) ; 
 int FUNC3 (struct firmware const**,struct echoaudio*,short) ; 
 scalar_t__ FUNC4 (struct echoaudio*,size_t) ; 

__attribute__((used)) static int FUNC5(struct echoaudio *chip, u32 cmd, short asic)
{
	const struct firmware *fw;
	int err;
	u32 i, size;
	u8 *code;

	err = FUNC3(&fw, chip, asic);
	if (err < 0) {
		FUNC1(chip->card->dev, "Firmware not found !\n");
		return err;
	}

	code = (u8 *)fw->data;
	size = fw->size;

	/* Send the "Here comes the ASIC" command */
	if (FUNC4(chip, cmd) < 0)
		goto la_error;

	/* Write length of ASIC file in bytes */
	if (FUNC4(chip, size) < 0)
		goto la_error;

	for (i = 0; i < size; i++) {
		if (FUNC4(chip, code[i]) < 0)
			goto la_error;
	}

	FUNC2(fw, chip);
	return 0;

la_error:
	FUNC0(chip->card->dev, "failed on write_dsp\n");
	FUNC2(fw, chip);
	return -EIO;
}