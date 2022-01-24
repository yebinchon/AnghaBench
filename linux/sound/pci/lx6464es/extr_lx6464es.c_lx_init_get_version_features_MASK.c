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
struct lx6464es {int board_sample_rate; TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int FUNC3 (struct lx6464es*,int*) ; 
 int FUNC4 (struct lx6464es*,int*) ; 

__attribute__((used)) static int FUNC5(struct lx6464es *chip)
{
	u32 dsp_version;

	int err;

	FUNC0(chip->card->dev, "->lx_init_get_version_features\n");

	err = FUNC4(chip, &dsp_version);

	if (err == 0) {
		u32 freq;

		FUNC2(chip->card->dev, "DSP version: V%02d.%02d #%d\n",
			   (dsp_version>>16) & 0xff, (dsp_version>>8) & 0xff,
			   dsp_version & 0xff);

		/* later: what firmware version do we expect? */

		/* retrieve Play/Rec features */
		/* done here because we may have to handle alternate
		 * DSP files. */
		/* later */

		/* init the EtherSound sample rate */
		err = FUNC3(chip, &freq);
		if (err == 0)
			chip->board_sample_rate = freq;
		FUNC0(chip->card->dev, "actual clock frequency %d\n", freq);
	} else {
		FUNC1(chip->card->dev, "DSP corrupted \n");
		err = -EAGAIN;
	}

	return err;
}