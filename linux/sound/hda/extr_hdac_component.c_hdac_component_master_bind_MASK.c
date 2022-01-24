#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct drm_audio_component {TYPE_2__* ops; TYPE_1__* audio_ops; scalar_t__ dev; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  owner; } ;
struct TYPE_3__ {int (* master_bind ) (struct device*,struct drm_audio_component*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct device*,struct drm_audio_component*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct drm_audio_component*) ; 
 struct drm_audio_component* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*,struct drm_audio_component*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct device *dev)
{
	struct drm_audio_component *acomp = FUNC3(dev);
	int ret;

	if (FUNC0(!acomp))
		return -EINVAL;

	ret = FUNC1(dev, acomp);
	if (ret < 0)
		return ret;

	if (FUNC0(!(acomp->dev && acomp->ops))) {
		ret = -EINVAL;
		goto out_unbind;
	}

	/* pin the module to avoid dynamic unbinding, but only if given */
	if (!FUNC6(acomp->ops->owner)) {
		ret = -ENODEV;
		goto out_unbind;
	}

	if (acomp->audio_ops && acomp->audio_ops->master_bind) {
		ret = acomp->audio_ops->master_bind(dev, acomp);
		if (ret < 0)
			goto module_put;
	}

	return 0;

 module_put:
	FUNC4(acomp->ops->owner);
out_unbind:
	FUNC2(dev, acomp);

	return ret;
}