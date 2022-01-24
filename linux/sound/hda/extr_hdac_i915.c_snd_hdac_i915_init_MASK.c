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
struct i915_audio_component {int dummy; } ;
struct hdac_bus {int /*<<< orphan*/  dev; struct drm_audio_component* audio_component; } ;
struct drm_audio_component {int /*<<< orphan*/  ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_MODULES ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bind_complete ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  i915_component_master_match ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  i915_init_ops ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct hdac_bus*) ; 
 int FUNC7 (struct hdac_bus*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC9(struct hdac_bus *bus)
{
	struct drm_audio_component *acomp;
	int err;

	if (!FUNC2())
		return -ENODEV;

	FUNC3(&bind_complete);

	err = FUNC7(bus, &i915_init_ops,
				  i915_component_master_match,
				  sizeof(struct i915_audio_component) - sizeof(*acomp));
	if (err < 0)
		return err;
	acomp = bus->audio_component;
	if (!acomp)
		return -ENODEV;
	if (!acomp->ops) {
		if (!FUNC0(CONFIG_MODULES) ||
		    !FUNC5("i915")) {
			/* 60s timeout */
			FUNC8(&bind_complete,
						   FUNC4(60 * 1000));
		}
	}
	if (!acomp->ops) {
		FUNC1(bus->dev, "couldn't bind with audio component\n");
		FUNC6(bus);
		return -ENODEV;
	}
	return 0;
}