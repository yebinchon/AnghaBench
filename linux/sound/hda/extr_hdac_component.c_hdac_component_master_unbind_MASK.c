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
struct drm_audio_component {scalar_t__ dev; TYPE_2__* ops; TYPE_1__* audio_ops; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  owner; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* master_unbind ) (struct device*,struct drm_audio_component*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct drm_audio_component*) ; 
 struct drm_audio_component* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct drm_audio_component*) ; 

__attribute__((used)) static void FUNC5(struct device *dev)
{
	struct drm_audio_component *acomp = FUNC2(dev);

	if (acomp->audio_ops && acomp->audio_ops->master_unbind)
		acomp->audio_ops->master_unbind(dev, acomp);
	FUNC3(acomp->ops->owner);
	FUNC1(dev, acomp);
	FUNC0(acomp->ops || acomp->dev);
}