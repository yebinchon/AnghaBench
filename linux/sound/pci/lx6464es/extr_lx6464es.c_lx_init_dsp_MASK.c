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
struct lx6464es {scalar_t__ playback_mute; scalar_t__* mac_address; TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  MICROBLAZE_IBL_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC2 (struct lx6464es*) ; 
 int FUNC3 (struct lx6464es*) ; 
 int FUNC4 (struct lx6464es*) ; 
 int FUNC5 (struct lx6464es*) ; 
 int FUNC6 (struct lx6464es*) ; 
 int /*<<< orphan*/  FUNC7 (struct lx6464es*) ; 
 int /*<<< orphan*/  FUNC8 (struct lx6464es*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct lx6464es *chip)
{
	int err;
	int i;

	FUNC0(chip->card->dev, "->lx_init_dsp\n");

	FUNC0(chip->card->dev, "initialize board\n");
	err = FUNC5(chip);
	if (err)
		return err;

	FUNC0(chip->card->dev, "testing board\n");
	err = FUNC6(chip);
	if (err)
		return err;

	FUNC0(chip->card->dev, "initialize ethersound configuration\n");
	err = FUNC3(chip);
	if (err)
		return err;

	FUNC7(chip);

	/** \todo the mac address should be ready by not, but it isn't,
	 *  so we wait for it */
	for (i = 0; i != 1000; ++i) {
		err = FUNC2(chip);
		if (err)
			return err;
		if (chip->mac_address[0] || chip->mac_address[1] || chip->mac_address[2] ||
		    chip->mac_address[3] || chip->mac_address[4] || chip->mac_address[5])
			goto mac_ready;
		FUNC9(1);
	}
	return -ETIMEDOUT;

mac_ready:
	FUNC0(chip->card->dev, "mac address ready read after: %dms\n", i);
	FUNC1(chip->card->dev,
		 "mac address: %02X.%02X.%02X.%02X.%02X.%02X\n",
		   chip->mac_address[0], chip->mac_address[1], chip->mac_address[2],
		   chip->mac_address[3], chip->mac_address[4], chip->mac_address[5]);

	err = FUNC4(chip);
	if (err)
		return err;

	FUNC8(chip, MICROBLAZE_IBL_DEFAULT);

	chip->playback_mute = 0;

	return err;
}