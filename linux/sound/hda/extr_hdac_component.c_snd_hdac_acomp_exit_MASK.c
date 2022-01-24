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
struct hdac_bus {struct drm_audio_component* audio_component; scalar_t__ display_power_status; int /*<<< orphan*/  display_power_active; struct device* dev; } ;
struct drm_audio_component {int /*<<< orphan*/  dev; TYPE_1__* ops; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* put_power ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hdac_acomp_release ; 
 int /*<<< orphan*/  hdac_component_master_ops ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct hdac_bus *bus)
{
	struct device *dev = bus->dev;
	struct drm_audio_component *acomp = bus->audio_component;

	if (!acomp)
		return 0;

	if (FUNC0(bus->display_power_active) && acomp->ops)
		acomp->ops->put_power(acomp->dev, bus->display_power_active);

	bus->display_power_active = 0;
	bus->display_power_status = 0;

	FUNC1(dev, &hdac_component_master_ops);

	bus->audio_component = NULL;
	FUNC2(dev, hdac_acomp_release, NULL, NULL);

	return 0;
}