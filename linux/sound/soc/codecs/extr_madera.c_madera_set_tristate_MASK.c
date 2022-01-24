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
struct snd_soc_dai {TYPE_1__* driver; struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct TYPE_2__ {int base; } ;

/* Variables and functions */
 unsigned int MADERA_AIF1_TRI ; 
 scalar_t__ MADERA_AIF_RATE_CTRL ; 
 int FUNC0 (struct snd_soc_component*,scalar_t__,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC1(struct snd_soc_dai *dai, int tristate)
{
	struct snd_soc_component *component = dai->component;
	int base = dai->driver->base;
	unsigned int reg;
	int ret;

	if (tristate)
		reg = MADERA_AIF1_TRI;
	else
		reg = 0;

	ret = FUNC0(component,
					    base + MADERA_AIF_RATE_CTRL,
					    MADERA_AIF1_TRI, reg);
	if (ret < 0)
		return ret;
	else
		return 0;
}