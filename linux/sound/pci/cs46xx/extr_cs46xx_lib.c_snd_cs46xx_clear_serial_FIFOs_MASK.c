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
struct snd_cs46xx {TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BA0_CLKCR1 ; 
 int /*<<< orphan*/  BA0_SERBAD ; 
 int /*<<< orphan*/  BA0_SERBCM ; 
 int /*<<< orphan*/  BA0_SERBWP ; 
 unsigned int CLKCR1_SWCE ; 
 unsigned int SERBCM_WRC ; 
 scalar_t__ FUNC0 (struct snd_cs46xx*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 unsigned int FUNC2 (struct snd_cs46xx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_cs46xx*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC4(struct snd_cs46xx *chip)
{
	int idx, powerdown = 0;
	unsigned int tmp;

	/*
	 *  See if the devices are powered down.  If so, we must power them up first
	 *  or they will not respond.
	 */
	tmp = FUNC2(chip, BA0_CLKCR1);
	if (!(tmp & CLKCR1_SWCE)) {
		FUNC3(chip, BA0_CLKCR1, tmp | CLKCR1_SWCE);
		powerdown = 1;
	}

	/*
	 *  We want to clear out the serial port FIFOs so we don't end up playing
	 *  whatever random garbage happens to be in them.  We fill the sample FIFOS
	 *  with zero (silence).
	 */
	FUNC3(chip, BA0_SERBWP, 0);

	/*
	 *  Fill all 256 sample FIFO locations.
	 */
	for (idx = 0; idx < 0xFF; idx++) {
		/*
		 *  Make sure the previous FIFO write operation has completed.
		 */
		if (FUNC0(chip,1)) {
			FUNC1(chip->card->dev,
				"failed waiting for FIFO at addr (%02X)\n",
				idx);

			if (powerdown)
				FUNC3(chip, BA0_CLKCR1, tmp);
          
			break;
		}
		/*
		 *  Write the serial port FIFO index.
		 */
		FUNC3(chip, BA0_SERBAD, idx);
		/*
		 *  Tell the serial port to load the new value into the FIFO location.
		 */
		FUNC3(chip, BA0_SERBCM, SERBCM_WRC);
	}
	/*
	 *  Now, if we powered up the devices, then power them back down again.
	 *  This is kinda ugly, but should never happen.
	 */
	if (powerdown)
		FUNC3(chip, BA0_CLKCR1, tmp);
}