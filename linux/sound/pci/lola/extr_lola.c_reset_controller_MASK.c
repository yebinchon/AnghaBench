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
struct lola {int cold_reset; TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BAR0 ; 
 int /*<<< orphan*/  BAR1 ; 
 int /*<<< orphan*/  BOARD_MODE ; 
 int EIO ; 
 int /*<<< orphan*/  GCTL ; 
 int /*<<< orphan*/  LOLA_GCTL_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 unsigned long jiffies ; 
 unsigned int FUNC1 (struct lola*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lola*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct lola *chip)
{
	unsigned int gctl = FUNC1(chip, BAR0, GCTL);
	unsigned long end_time;

	if (gctl) {
		/* to be sure */
		FUNC2(chip, BAR1, BOARD_MODE, 0);
		return 0;
	}

	chip->cold_reset = 1;
	FUNC2(chip, BAR0, GCTL, LOLA_GCTL_RESET);
	end_time = jiffies + FUNC3(200);
	do {
		FUNC4(1);
		gctl = FUNC1(chip, BAR0, GCTL);
		if (gctl)
			break;
	} while (FUNC5(jiffies, end_time));
	if (!gctl) {
		FUNC0(chip->card->dev, "cannot reset controller\n");
		return -EIO;
	}
	return 0;
}