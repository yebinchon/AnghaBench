#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct spi_device {int irq; int /*<<< orphan*/  dev; } ;
struct regmap {int dummy; } ;
typedef  enum pcm186x_type { ____Placeholder_pcm186x_type } pcm186x_type ;
struct TYPE_2__ {int /*<<< orphan*/  driver_data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 struct regmap* FUNC2 (struct spi_device*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int const,int,struct regmap*) ; 
 int /*<<< orphan*/  pcm186x_regmap ; 
 TYPE_1__* FUNC4 (struct spi_device*) ; 

__attribute__((used)) static int FUNC5(struct spi_device *spi)
{
	const enum pcm186x_type type =
			 (enum pcm186x_type)FUNC4(spi)->driver_data;
	int irq = spi->irq;
	struct regmap *regmap;

	regmap = FUNC2(spi, &pcm186x_regmap);
	if (FUNC0(regmap))
		return FUNC1(regmap);

	return FUNC3(&spi->dev, type, irq, regmap);
}