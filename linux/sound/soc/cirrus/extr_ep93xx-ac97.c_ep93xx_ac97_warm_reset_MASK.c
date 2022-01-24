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
 int /*<<< orphan*/  AC97SYNC ; 
 int /*<<< orphan*/  AC97SYNC_TIMEDSYNC ; 
 int /*<<< orphan*/  AC97_CODECREADY ; 
 int /*<<< orphan*/  AC97_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct ep93xx_ac97_info* ep93xx_ac97_info ; 
 int /*<<< orphan*/  FUNC1 (struct ep93xx_ac97_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct snd_ac97 *ac97)
{
	struct ep93xx_ac97_info *info = ep93xx_ac97_info;

	FUNC2(&info->lock);

	/*
	 * We are assuming that before this functions gets called, the codec
	 * BIT_CLK is stopped by forcing the codec into powerdown mode. We can
	 * control the SYNC signal directly via AC97SYNC register. Using
	 * TIMEDSYNC the controller will keep the SYNC high > 1us.
	 */
	FUNC1(info, AC97SYNC, AC97SYNC_TIMEDSYNC);
	FUNC1(info, AC97IM, AC97_CODECREADY);
	if (!FUNC4(&info->done, AC97_TIMEOUT))
		FUNC0(info->dev, "codec warm reset timeout\n");

	FUNC3(&info->lock);
}