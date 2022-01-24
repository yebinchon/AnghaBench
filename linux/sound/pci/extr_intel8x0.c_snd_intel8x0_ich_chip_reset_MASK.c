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
struct intel8x0 {TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  GLOB_CNT ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int ICH_AC97COLD ; 
 unsigned int ICH_AC97WARM ; 
 unsigned int ICH_ACLINK ; 
 unsigned int ICH_PCM_246_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 unsigned int FUNC2 (struct intel8x0*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct intel8x0*,int /*<<< orphan*/ ,unsigned int) ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (unsigned long,int) ; 

__attribute__((used)) static int FUNC6(struct intel8x0 *chip)
{
	unsigned long end_time;
	unsigned int cnt;
	/* ACLink on, 2 channels */
	cnt = FUNC2(chip, FUNC0(GLOB_CNT));
	cnt &= ~(ICH_ACLINK | ICH_PCM_246_MASK);
	/* finish cold or do warm reset */
	cnt |= (cnt & ICH_AC97COLD) == 0 ? ICH_AC97COLD : ICH_AC97WARM;
	FUNC3(chip, FUNC0(GLOB_CNT), cnt);
	end_time = (jiffies + (HZ / 4)) + 1;
	do {
		if ((FUNC2(chip, FUNC0(GLOB_CNT)) & ICH_AC97WARM) == 0)
			return 0;
		FUNC4(1);
	} while (FUNC5(end_time, jiffies));
	FUNC1(chip->card->dev, "AC'97 warm reset still in progress? [0x%x]\n",
		   FUNC2(chip, FUNC0(GLOB_CNT)));
	return -EIO;
}