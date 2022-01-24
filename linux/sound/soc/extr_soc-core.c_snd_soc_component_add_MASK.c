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
struct snd_soc_component {int /*<<< orphan*/  list; scalar_t__ regmap; int /*<<< orphan*/  dev; TYPE_1__* driver; } ;
struct TYPE_2__ {int /*<<< orphan*/  read; int /*<<< orphan*/  write; } ;

/* Variables and functions */
 int /*<<< orphan*/  client_mutex ; 
 int /*<<< orphan*/  component_list ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*) ; 

__attribute__((used)) static void FUNC5(struct snd_soc_component *component)
{
	FUNC2(&client_mutex);

	if (!component->driver->write && !component->driver->read) {
		if (!component->regmap)
			component->regmap = FUNC0(component->dev,
							   NULL);
		if (component->regmap)
			FUNC4(component);
	}

	/* see for_each_component */
	FUNC1(&component->list, &component_list);

	FUNC3(&client_mutex);
}