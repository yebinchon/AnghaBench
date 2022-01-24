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
struct snd_soc_component {TYPE_1__* card; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  snd_card; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct snd_soc_component* FUNC1 (struct device*,int /*<<< orphan*/ *) ; 

void FUNC2(struct device *dev)
{
	struct snd_soc_component *component =
			FUNC1(dev, NULL);

	if (!component || !component->card)
		return;

	FUNC0(component->card->snd_card);
}