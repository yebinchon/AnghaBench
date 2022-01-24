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
struct wm8776_priv {unsigned int* sysclk; } ;
struct snd_soc_dai {TYPE_1__* driver; struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct TYPE_2__ {size_t id; } ;

/* Variables and functions */
 size_t FUNC0 (unsigned int*) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (int) ; 
 struct wm8776_priv* FUNC2 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_dai *dai,
			     int clk_id, unsigned int freq, int dir)
{
	struct snd_soc_component *component = dai->component;
	struct wm8776_priv *wm8776 = FUNC2(component);

	if (FUNC1(dai->driver->id >= FUNC0(wm8776->sysclk)))
		return -EINVAL;

	wm8776->sysclk[dai->driver->id] = freq;

	return 0;
}