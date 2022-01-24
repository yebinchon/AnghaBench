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
struct snd_ac97 {int dummy; } ;
struct ep93xx_ac97_info {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; int /*<<< orphan*/  done; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97IM ; 
 int /*<<< orphan*/  AC97S1DATA ; 
 int /*<<< orphan*/  AC97S2DATA ; 
 unsigned short AC97_SLOT2RXVALID ; 
 int /*<<< orphan*/  AC97_TIMEOUT ; 
 unsigned short ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned short) ; 
 struct ep93xx_ac97_info* ep93xx_ac97_info ; 
 scalar_t__ FUNC1 (struct ep93xx_ac97_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ep93xx_ac97_info*,int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned short FUNC6(struct snd_ac97 *ac97,
				       unsigned short reg)
{
	struct ep93xx_ac97_info *info = ep93xx_ac97_info;
	unsigned short val;

	FUNC3(&info->lock);

	FUNC2(info, AC97S1DATA, reg);
	FUNC2(info, AC97IM, AC97_SLOT2RXVALID);
	if (!FUNC5(&info->done, AC97_TIMEOUT)) {
		FUNC0(info->dev, "timeout reading register %x\n", reg);
		FUNC4(&info->lock);
		return -ETIMEDOUT;
	}
	val = (unsigned short)FUNC1(info, AC97S2DATA);

	FUNC4(&info->lock);
	return val;
}