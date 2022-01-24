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
 int /*<<< orphan*/  RM_CNVRTR1_DACMU ; 
 int /*<<< orphan*/  RV_CNVRTR1_DACMU_ENABLE ; 
 int /*<<< orphan*/  R_CNVRTR1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC2(struct snd_soc_component *component)
{
	int ret;

	ret = FUNC1(component,
			R_CNVRTR1, RM_CNVRTR1_DACMU,
		RV_CNVRTR1_DACMU_ENABLE);
	if (ret < 0) {
		FUNC0(component->dev, "Failed to mute DAC (%d)\n",
				ret);
		return ret;
	}

	return 0;
}