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
 int /*<<< orphan*/  AC97EOI ; 
 int AC97EOI_CODECREADY ; 
 int AC97EOI_WINT ; 
 int /*<<< orphan*/  AC97GCR ; 
 int AC97GCR_AC97IFE ; 
 int /*<<< orphan*/  AC97IM ; 
 int /*<<< orphan*/  AC97RESET ; 
 int AC97RESET_TIMEDRESET ; 
 int AC97_CODECREADY ; 
 int /*<<< orphan*/  AC97_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct ep93xx_ac97_info* ep93xx_ac97_info ; 
 int /*<<< orphan*/  FUNC1 (struct ep93xx_ac97_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct snd_ac97 *ac97)
{
	struct ep93xx_ac97_info *info = ep93xx_ac97_info;

	FUNC2(&info->lock);

	/*
	 * For doing cold reset, we disable the AC97 controller interface, clear
	 * WINT and CODECREADY bits, and finally enable the interface again.
	 */
	FUNC1(info, AC97GCR, 0);
	FUNC1(info, AC97EOI, AC97EOI_CODECREADY | AC97EOI_WINT);
	FUNC1(info, AC97GCR, AC97GCR_AC97IFE);

	/*
	 * Now, assert the reset and wait for the codec to become ready.
	 */
	FUNC1(info, AC97RESET, AC97RESET_TIMEDRESET);
	FUNC1(info, AC97IM, AC97_CODECREADY);
	if (!FUNC5(&info->done, AC97_TIMEOUT))
		FUNC0(info->dev, "codec cold reset timeout\n");

	/*
	 * Give the codec some time to come fully out from the reset. This way
	 * we ensure that the subsequent reads/writes will work.
	 */
	FUNC4(15000, 20000);

	FUNC3(&info->lock);
}