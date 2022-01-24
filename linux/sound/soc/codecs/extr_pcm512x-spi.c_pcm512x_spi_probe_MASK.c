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
 struct regmap* FUNC2 (struct spi_device*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct regmap*) ; 
 int /*<<< orphan*/  pcm512x_regmap ; 

__attribute__((used)) static int FUNC4(struct spi_device *spi)
{
	struct regmap *regmap;
	int ret;

	regmap = FUNC2(spi, &pcm512x_regmap);
	if (FUNC0(regmap)) {
		ret = FUNC1(regmap);
		return ret;
	}

	return FUNC3(&spi->dev, regmap);
}