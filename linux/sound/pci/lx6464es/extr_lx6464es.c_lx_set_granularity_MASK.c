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
struct lx6464es {int pcm_granularity; TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EAGAIN ; 
 int MICROBLAZE_IBL_MAX ; 
 int MICROBLAZE_IBL_MIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct lx6464es*,int) ; 

__attribute__((used)) static int FUNC4(struct lx6464es *chip, u32 gran)
{
	int err = 0;
	u32 snapped_gran = MICROBLAZE_IBL_MIN;

	FUNC0(chip->card->dev, "->lx_set_granularity\n");

	/* blocksize is a power of 2 */
	while ((snapped_gran < gran) &&
	       (snapped_gran < MICROBLAZE_IBL_MAX)) {
		snapped_gran *= 2;
	}

	if (snapped_gran == chip->pcm_granularity)
		return 0;

	err = FUNC3(chip, snapped_gran);
	if (err < 0) {
		FUNC2(chip->card->dev, "could not set granularity\n");
		err = -EAGAIN;
	}

	if (snapped_gran != gran)
		FUNC1(chip->card->dev, "snapped blocksize to %d\n", snapped_gran);

	FUNC0(chip->card->dev, "set blocksize on board %d\n", snapped_gran);
	chip->pcm_granularity = snapped_gran;

	return err;
}