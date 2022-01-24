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
struct snd_cs46xx {int amplifier; TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BA0_EGPIODR ; 
 int /*<<< orphan*/  BA0_EGPIOPTR ; 
 int EGPIODR_GPOE2 ; 
 int EGPIOPTR_GPPT2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct snd_cs46xx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_cs46xx*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct snd_cs46xx *chip, int change)
{
	int old = chip->amplifier;
	int val1 = FUNC1(chip, BA0_EGPIODR);
	int val2 = FUNC1(chip, BA0_EGPIOPTR);

	chip->amplifier += change;
	if (chip->amplifier && !old) {
		FUNC0(chip->card->dev, "Hercules amplifier ON\n");

		FUNC2(chip, BA0_EGPIODR, 
				   EGPIODR_GPOE2 | val1);     /* enable EGPIO2 output */
		FUNC2(chip, BA0_EGPIOPTR, 
				   EGPIOPTR_GPPT2 | val2);   /* open-drain on output */
	} else if (old && !chip->amplifier) {
		FUNC0(chip->card->dev, "Hercules amplifier OFF\n");
		FUNC2(chip, BA0_EGPIODR,  val1 & ~EGPIODR_GPOE2); /* disable */
		FUNC2(chip, BA0_EGPIOPTR, val2 & ~EGPIOPTR_GPPT2); /* disable */
	}
}