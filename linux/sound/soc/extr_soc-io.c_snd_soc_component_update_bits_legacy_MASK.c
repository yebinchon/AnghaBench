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
struct snd_soc_component {int /*<<< orphan*/  io_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct snd_soc_component*,unsigned int,unsigned int*) ; 
 int FUNC3 (struct snd_soc_component*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC4(
	struct snd_soc_component *component, unsigned int reg,
	unsigned int mask, unsigned int val, bool *change)
{
	unsigned int old, new;
	int ret;

	FUNC0(&component->io_mutex);

	ret = FUNC2(component, reg, &old);
	if (ret < 0)
		goto out_unlock;

	new = (old & ~mask) | (val & mask);
	*change = old != new;
	if (*change)
		ret = FUNC3(component, reg, new);
out_unlock:
	FUNC1(&component->io_mutex);

	return ret;
}