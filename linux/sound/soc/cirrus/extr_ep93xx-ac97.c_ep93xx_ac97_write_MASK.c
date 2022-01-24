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
 unsigned short AC97_SLOT2TXCOMPLETE ; 
 int /*<<< orphan*/  AC97_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned short) ; 
 struct ep93xx_ac97_info* ep93xx_ac97_info ; 
 int /*<<< orphan*/  FUNC1 (struct ep93xx_ac97_info*,int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct snd_ac97 *ac97,
			      unsigned short reg,
			      unsigned short val)
{
	struct ep93xx_ac97_info *info = ep93xx_ac97_info;

	FUNC2(&info->lock);

	/*
	 * Writes to the codec need to be done so that slot 2 is filled in
	 * before slot 1.
	 */
	FUNC1(info, AC97S2DATA, val);
	FUNC1(info, AC97S1DATA, reg);

	FUNC1(info, AC97IM, AC97_SLOT2TXCOMPLETE);
	if (!FUNC4(&info->done, AC97_TIMEOUT))
		FUNC0(info->dev, "timeout writing register %x\n", reg);

	FUNC3(&info->lock);
}