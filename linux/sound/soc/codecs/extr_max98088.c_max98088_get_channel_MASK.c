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
struct snd_soc_component {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  eq_mode_name ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_component *component, const char *name)
{
	int ret;

	ret = FUNC2(eq_mode_name, FUNC0(eq_mode_name), name);
	if (ret < 0)
		FUNC1(component->dev, "Bad EQ channel name '%s'\n", name);
	return ret;
}