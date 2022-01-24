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
struct xtfpga_i2s {scalar_t__ regmap; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  XTFPGA_I2S_CONFIG ; 
 int /*<<< orphan*/  XTFPGA_I2S_INT_MASK ; 
 int /*<<< orphan*/  XTFPGA_I2S_INT_STATUS ; 
 int /*<<< orphan*/  XTFPGA_I2S_INT_VALID ; 
 struct xtfpga_i2s* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct xtfpga_i2s *i2s = FUNC1(&pdev->dev);

	if (i2s->regmap && !FUNC0(i2s->regmap)) {
		FUNC4(i2s->regmap, XTFPGA_I2S_CONFIG, 0);
		FUNC4(i2s->regmap, XTFPGA_I2S_INT_MASK, 0);
		FUNC4(i2s->regmap, XTFPGA_I2S_INT_STATUS,
			     XTFPGA_I2S_INT_VALID);
	}
	FUNC2(&pdev->dev);
	if (!FUNC3(&pdev->dev))
		FUNC5(&pdev->dev);
	return 0;
}