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
struct device {int dummy; } ;
struct aic32x4_priv {void* supply_iov; void* supply_ldo; void* supply_dv; int /*<<< orphan*/  power_cfg; void* supply_av; } ;

/* Variables and functions */
 int /*<<< orphan*/  AIC32X4_PWR_AIC32X4_LDO_ENABLE ; 
 int EPROBE_DEFER ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 void* FUNC3 (struct device*,char*) ; 
 void* FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int FUNC6 (void*) ; 

__attribute__((used)) static int FUNC7(struct device *dev,
		struct aic32x4_priv *aic32x4)
{
	int ret = 0;

	aic32x4->supply_ldo = FUNC4(dev, "ldoin");
	aic32x4->supply_iov = FUNC3(dev, "iov");
	aic32x4->supply_dv = FUNC4(dev, "dv");
	aic32x4->supply_av = FUNC4(dev, "av");

	/* Check if the regulator requirements are fulfilled */

	if (FUNC0(aic32x4->supply_iov)) {
		FUNC2(dev, "Missing supply 'iov'\n");
		return FUNC1(aic32x4->supply_iov);
	}

	if (FUNC0(aic32x4->supply_ldo)) {
		if (FUNC1(aic32x4->supply_ldo) == -EPROBE_DEFER)
			return -EPROBE_DEFER;

		if (FUNC0(aic32x4->supply_dv)) {
			FUNC2(dev, "Missing supply 'dv' or 'ldoin'\n");
			return FUNC1(aic32x4->supply_dv);
		}
		if (FUNC0(aic32x4->supply_av)) {
			FUNC2(dev, "Missing supply 'av' or 'ldoin'\n");
			return FUNC1(aic32x4->supply_av);
		}
	} else {
		if (FUNC0(aic32x4->supply_dv) &&
				FUNC1(aic32x4->supply_dv) == -EPROBE_DEFER)
			return -EPROBE_DEFER;
		if (FUNC0(aic32x4->supply_av) &&
				FUNC1(aic32x4->supply_av) == -EPROBE_DEFER)
			return -EPROBE_DEFER;
	}

	ret = FUNC6(aic32x4->supply_iov);
	if (ret) {
		FUNC2(dev, "Failed to enable regulator iov\n");
		return ret;
	}

	if (!FUNC0(aic32x4->supply_ldo)) {
		ret = FUNC6(aic32x4->supply_ldo);
		if (ret) {
			FUNC2(dev, "Failed to enable regulator ldo\n");
			goto error_ldo;
		}
	}

	if (!FUNC0(aic32x4->supply_dv)) {
		ret = FUNC6(aic32x4->supply_dv);
		if (ret) {
			FUNC2(dev, "Failed to enable regulator dv\n");
			goto error_dv;
		}
	}

	if (!FUNC0(aic32x4->supply_av)) {
		ret = FUNC6(aic32x4->supply_av);
		if (ret) {
			FUNC2(dev, "Failed to enable regulator av\n");
			goto error_av;
		}
	}

	if (!FUNC0(aic32x4->supply_ldo) && FUNC0(aic32x4->supply_av))
		aic32x4->power_cfg |= AIC32X4_PWR_AIC32X4_LDO_ENABLE;

	return 0;

error_av:
	if (!FUNC0(aic32x4->supply_dv))
		FUNC5(aic32x4->supply_dv);

error_dv:
	if (!FUNC0(aic32x4->supply_ldo))
		FUNC5(aic32x4->supply_ldo);

error_ldo:
	FUNC5(aic32x4->supply_iov);
	return ret;
}