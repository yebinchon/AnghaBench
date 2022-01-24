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
struct madera {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  MADERA_IRQ1_RAW_STATUS_15 ; 
 unsigned int MADERA_SPK_OVERHEAT_STS1 ; 
 unsigned int MADERA_SPK_OVERHEAT_WARN_STS1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int FUNC2(struct madera *madera,
					 bool *warn, bool *shutdown)
{
	unsigned int val;
	int ret;

	ret = FUNC1(madera->regmap, MADERA_IRQ1_RAW_STATUS_15, &val);
	if (ret) {
		FUNC0(madera->dev, "Failed to read thermal status: %d\n",
			ret);
		return ret;
	}

	*warn = val & MADERA_SPK_OVERHEAT_WARN_STS1;
	*shutdown = val & MADERA_SPK_OVERHEAT_STS1;

	return 0;
}