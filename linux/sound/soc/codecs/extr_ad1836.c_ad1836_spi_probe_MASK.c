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
struct spi_device {int /*<<< orphan*/  dev; } ;
struct ad1836_priv {size_t type; int /*<<< orphan*/  regmap; } ;
struct TYPE_2__ {size_t driver_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ad1836_regmap_config ; 
 int /*<<< orphan*/ * ad183x_dais ; 
 struct ad1836_priv* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_device*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  soc_component_dev_ad1836 ; 
 TYPE_1__* FUNC5 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct spi_device*,struct ad1836_priv*) ; 

__attribute__((used)) static int FUNC7(struct spi_device *spi)
{
	struct ad1836_priv *ad1836;
	int ret;

	ad1836 = FUNC2(&spi->dev, sizeof(struct ad1836_priv),
			      GFP_KERNEL);
	if (ad1836 == NULL)
		return -ENOMEM;

	ad1836->regmap = FUNC3(spi, &ad1836_regmap_config);
	if (FUNC0(ad1836->regmap))
		return FUNC1(ad1836->regmap);

	ad1836->type = FUNC5(spi)->driver_data;

	FUNC6(spi, ad1836);

	ret = FUNC4(&spi->dev,
			&soc_component_dev_ad1836, &ad183x_dais[ad1836->type], 1);
	return ret;
}