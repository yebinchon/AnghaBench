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
struct snd_soc_component_driver {int dummy; } ;
struct snd_soc_component {struct snd_soc_component_driver const* driver; struct device* dev; int /*<<< orphan*/  name; int /*<<< orphan*/  id; int /*<<< orphan*/  io_mutex; int /*<<< orphan*/  card_list; int /*<<< orphan*/  dobj_list; int /*<<< orphan*/  dai_list; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_component *component,
	const struct snd_soc_component_driver *driver, struct device *dev)
{
	FUNC0(&component->dai_list);
	FUNC0(&component->dobj_list);
	FUNC0(&component->card_list);
	FUNC3(&component->io_mutex);

	component->name = FUNC2(dev, &component->id);
	if (!component->name) {
		FUNC1(dev, "ASoC: Failed to allocate name\n");
		return -ENOMEM;
	}

	component->dev = dev;
	component->driver = driver;

	return 0;
}