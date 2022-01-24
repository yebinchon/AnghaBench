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
struct hdac_bus {struct drm_audio_component* audio_component; struct device* dev; } ;
struct drm_audio_component_audio_ops {int dummy; } ;
struct drm_audio_component {struct drm_audio_component_audio_ops const* audio_ops; } ;
struct device {int dummy; } ;
struct component_match {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct device*,int /*<<< orphan*/ *,struct component_match*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct component_match**,int (*) (struct device*,int,void*),struct hdac_bus*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct drm_audio_component*) ; 
 struct drm_audio_component* FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hdac_acomp_release ; 
 int /*<<< orphan*/  hdac_component_master_ops ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 

int FUNC8(struct hdac_bus *bus,
			const struct drm_audio_component_audio_ops *aops,
			int (*match_master)(struct device *, int, void *),
			size_t extra_size)
{
	struct component_match *match = NULL;
	struct device *dev = bus->dev;
	struct drm_audio_component *acomp;
	int ret;

	if (FUNC0(FUNC7(dev)))
		return -EBUSY;

	acomp = FUNC5(hdac_acomp_release, sizeof(*acomp) + extra_size,
			     GFP_KERNEL);
	if (!acomp)
		return -ENOMEM;
	acomp->audio_ops = aops;
	bus->audio_component = acomp;
	FUNC4(dev, acomp);

	FUNC2(dev, &match, match_master, bus);
	ret = FUNC1(dev, &hdac_component_master_ops,
					      match);
	if (ret < 0)
		goto out_err;

	return 0;

out_err:
	bus->audio_component = NULL;
	FUNC6(dev, hdac_acomp_release, NULL, NULL);
	FUNC3(dev, "failed to add audio component master (%d)\n", ret);

	return ret;
}