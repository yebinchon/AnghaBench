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
struct drm_audio_component {int /*<<< orphan*/ * audio_ops; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  bind_complete ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(struct device *dev,
			    struct drm_audio_component *acomp)
{
	FUNC0(&bind_complete);
	/* clear audio_ops here as it was needed only for completion call */
	acomp->audio_ops = NULL;
	return 0;
}