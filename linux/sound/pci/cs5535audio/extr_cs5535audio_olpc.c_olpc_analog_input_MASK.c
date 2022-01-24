#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_ac97 {TYPE_2__* bus; } ;
struct TYPE_4__ {TYPE_1__* card; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int AC97_AD_HPFD_SHIFT ; 
 int /*<<< orphan*/  AC97_AD_TEST2 ; 
 int /*<<< orphan*/  OLPC_GPIO_MIC_AC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (struct snd_ac97*,int /*<<< orphan*/ ,int,int) ; 

void FUNC4(struct snd_ac97 *ac97, int on)
{
	int err;

	if (!FUNC2())
		return;

	/* update the High Pass Filter (via AC97_AD_TEST2) */
	err = FUNC3(ac97, AC97_AD_TEST2,
			1 << AC97_AD_HPFD_SHIFT, on << AC97_AD_HPFD_SHIFT);
	if (err < 0) {
		FUNC0(ac97->bus->card->dev,
			"setting High Pass Filter - %d\n", err);
		return;
	}

	/* set Analog Input through GPIO */
	FUNC1(OLPC_GPIO_MIC_AC, on);
}