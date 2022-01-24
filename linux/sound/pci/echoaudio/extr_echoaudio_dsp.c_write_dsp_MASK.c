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
struct echoaudio {int bad_board; TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHI32_DATA_REG ; 
 int CHI32_STATUS_HOST_WRITE_EMPTY ; 
 int /*<<< orphan*/  CHI32_STATUS_REG ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct echoaudio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct echoaudio*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct echoaudio *chip, u32 data)
{
	u32 status, i;

	for (i = 0; i < 10000000; i++) {	/* timeout = 10s */
		status = FUNC2(chip, CHI32_STATUS_REG);
		if ((status & CHI32_STATUS_HOST_WRITE_EMPTY) != 0) {
			FUNC3(chip, CHI32_DATA_REG, data);
			FUNC5();			/* write it immediately */
			return 0;
		}
		FUNC4(1);
		FUNC0();
	}

	chip->bad_board = true;		/* Set true until DSP re-loaded */
	FUNC1(chip->card->dev, "write_dsp: Set bad_board to true\n");
	return -EIO;
}