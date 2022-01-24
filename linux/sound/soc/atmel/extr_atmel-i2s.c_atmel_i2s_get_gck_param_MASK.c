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
struct atmel_i2s_gck_param {scalar_t__ fs; } ;
struct atmel_i2s_dev {struct atmel_i2s_gck_param const* gck_param; int /*<<< orphan*/  dev; int /*<<< orphan*/  gclk; } ;

/* Variables and functions */
 int FUNC0 (struct atmel_i2s_gck_param*) ; 
 int EINVAL ; 
 int INT_MAX ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct atmel_i2s_gck_param* gck_params ; 

__attribute__((used)) static int FUNC3(struct atmel_i2s_dev *dev, int fs)
{
	int i, best;

	if (!dev->gclk) {
		FUNC2(dev->dev, "cannot generate the I2S Master Clock\n");
		return -EINVAL;
	}

	/*
	 * Find the best possible settings to generate the I2S Master Clock
	 * from the PLL Audio.
	 */
	dev->gck_param = NULL;
	best = INT_MAX;
	for (i = 0; i < FUNC0(gck_params); ++i) {
		const struct atmel_i2s_gck_param *gck_param = &gck_params[i];
		int val = FUNC1(fs - gck_param->fs);

		if (val < best) {
			best = val;
			dev->gck_param = gck_param;
		}
	}

	return 0;
}