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
struct snd_soc_dai {scalar_t__ probed; int /*<<< orphan*/  name; int /*<<< orphan*/  dev; TYPE_1__* driver; } ;
struct TYPE_2__ {int remove_order; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct snd_soc_dai*) ; 

__attribute__((used)) static void FUNC2(struct snd_soc_dai *dai, int order)
{
	int err;

	if (!dai || !dai->probed || !dai->driver ||
	    dai->driver->remove_order != order)
		return;

	err = FUNC1(dai);
	if (err < 0)
		FUNC0(dai->dev,
			"ASoC: failed to remove %s: %d\n",
			dai->name, err);

	dai->probed = 0;
}