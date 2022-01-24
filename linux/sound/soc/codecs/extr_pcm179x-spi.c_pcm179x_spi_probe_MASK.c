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
struct spi_device {int /*<<< orphan*/  dev; } ;
struct regmap {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 struct regmap* FUNC3 (struct spi_device*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct regmap*) ; 
 int /*<<< orphan*/  pcm179x_regmap_config ; 

__attribute__((used)) static int FUNC5(struct spi_device *spi)
{
	struct regmap *regmap;
	int ret;

	regmap = FUNC3(spi, &pcm179x_regmap_config);
	if (FUNC0(regmap)) {
		ret = FUNC1(regmap);
		FUNC2(&spi->dev, "Failed to allocate regmap: %d\n", ret);
		return ret;
	}

	return FUNC4(&spi->dev, regmap);
}