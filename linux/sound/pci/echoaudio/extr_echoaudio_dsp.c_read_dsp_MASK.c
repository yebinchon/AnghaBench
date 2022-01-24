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
typedef  scalar_t__ u32 ;
struct echoaudio {int bad_board; TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHI32_DATA_REG ; 
 scalar_t__ CHI32_STATUS_HOST_READ_FULL ; 
 int /*<<< orphan*/  CHI32_STATUS_REG ; 
 int EIO ; 
 scalar_t__ READ_DSP_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (struct echoaudio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct echoaudio *chip, u32 *data)
{
	u32 status, i;

	for (i = 0; i < READ_DSP_TIMEOUT; i++) {
		status = FUNC2(chip, CHI32_STATUS_REG);
		if ((status & CHI32_STATUS_HOST_READ_FULL) != 0) {
			*data = FUNC2(chip, CHI32_DATA_REG);
			return 0;
		}
		FUNC3(1);
		FUNC0();
	}

	chip->bad_board = true;		/* Set true until DSP re-loaded */
	FUNC1(chip->card->dev, "read_dsp: Set bad_board to true\n");
	return -EIO;
}