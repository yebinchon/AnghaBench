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
struct snd_soc_dai_driver {int /*<<< orphan*/ * name; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline char *FUNC3(struct device *dev,
		struct snd_soc_dai_driver *dai_drv)
{
	if (dai_drv->name == NULL) {
		FUNC0(dev,
			"ASoC: error - multiple DAI %s registered with no name\n",
			FUNC1(dev));
		return NULL;
	}

	return FUNC2(dai_drv->name, GFP_KERNEL);
}