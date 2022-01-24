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
struct spi_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  mode; } ;
struct regmap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPI_MODE_0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct regmap* FUNC1 (struct spi_device*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct spi_device*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct regmap*) ; 
 int /*<<< orphan*/  tlv320aic23_regmap ; 

__attribute__((used)) static int FUNC4(struct spi_device *spi)
{
	int ret;
	struct regmap *regmap;

	FUNC0(&spi->dev, "probing tlv320aic23 spi device\n");

	spi->mode = SPI_MODE_0;
	ret = FUNC2(spi);
	if (ret < 0)
		return ret;

	regmap = FUNC1(spi, &tlv320aic23_regmap);
	return FUNC3(&spi->dev, regmap);
}