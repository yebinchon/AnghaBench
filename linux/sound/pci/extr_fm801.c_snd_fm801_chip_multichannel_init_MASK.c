#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct fm801 {int secondary_addr; int secondary; scalar_t__ multichannel; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_DATA ; 
 int /*<<< orphan*/  AC97_VENDOR_ID1 ; 
 unsigned short FUNC0 (struct fm801*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct fm801*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct fm801 *chip)
{
	unsigned short cmdw;

	if (chip->multichannel) {
		if (chip->secondary_addr) {
			FUNC2(chip, chip->secondary_addr,
				       AC97_VENDOR_ID1, FUNC1(50));
		} else {
			/* my card has the secondary codec */
			/* at address #3, so the loop is inverted */
			int i;
			for (i = 3; i > 0; i--) {
				if (!FUNC2(chip, i, AC97_VENDOR_ID1,
						     FUNC1(50))) {
					cmdw = FUNC0(chip, AC97_DATA);
					if (cmdw != 0xffff && cmdw != 0) {
						chip->secondary = 1;
						chip->secondary_addr = i;
						break;
					}
				}
			}
		}

		/* the recovery phase, it seems that probing for non-existing codec might */
		/* cause timeout problems */
		FUNC2(chip, 0, AC97_VENDOR_ID1, FUNC1(750));
	}
}