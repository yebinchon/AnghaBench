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
struct spi_device {int bits_per_word; int /*<<< orphan*/  dev; int /*<<< orphan*/  mode; } ;
struct gpio_desc {int dummy; } ;
struct ak4104_private {struct gpio_desc* regmap; struct gpio_desc* regulator; } ;

/* Variables and functions */
 int /*<<< orphan*/  AK4104_REG_RESERVED ; 
 unsigned int AK4104_RESERVED_VAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 scalar_t__ FUNC0 (struct gpio_desc*) ; 
 int FUNC1 (struct gpio_desc*) ; 
 int /*<<< orphan*/  SPI_MODE_0 ; 
 int /*<<< orphan*/  ak4104_dai ; 
 int /*<<< orphan*/  ak4104_regmap ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 struct gpio_desc* FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct ak4104_private* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct gpio_desc* FUNC5 (struct spi_device*,int /*<<< orphan*/ *) ; 
 struct gpio_desc* FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC8 (struct gpio_desc*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  soc_component_device_ak4104 ; 
 int /*<<< orphan*/  FUNC9 (struct spi_device*,struct ak4104_private*) ; 
 int FUNC10 (struct spi_device*) ; 

__attribute__((used)) static int FUNC11(struct spi_device *spi)
{
	struct ak4104_private *ak4104;
	struct gpio_desc *reset_gpiod;
	unsigned int val;
	int ret;

	spi->bits_per_word = 8;
	spi->mode = SPI_MODE_0;
	ret = FUNC10(spi);
	if (ret < 0)
		return ret;

	ak4104 = FUNC4(&spi->dev, sizeof(struct ak4104_private),
			      GFP_KERNEL);
	if (ak4104 == NULL)
		return -ENOMEM;

	ak4104->regulator = FUNC6(&spi->dev, "vdd");
	if (FUNC0(ak4104->regulator)) {
		ret = FUNC1(ak4104->regulator);
		FUNC2(&spi->dev, "Unable to get Vdd regulator: %d\n", ret);
		return ret;
	}

	ak4104->regmap = FUNC5(spi, &ak4104_regmap);
	if (FUNC0(ak4104->regmap)) {
		ret = FUNC1(ak4104->regmap);
		return ret;
	}

	reset_gpiod = FUNC3(&spi->dev, "reset",
					      GPIOD_OUT_HIGH);
	if (FUNC0(reset_gpiod) &&
	    FUNC1(reset_gpiod) == -EPROBE_DEFER)
		return -EPROBE_DEFER;

	/* read the 'reserved' register - according to the datasheet, it
	 * should contain 0x5b. Not a good way to verify the presence of
	 * the device, but there is no hardware ID register. */
	ret = FUNC8(ak4104->regmap, AK4104_REG_RESERVED, &val);
	if (ret != 0)
		return ret;
	if (val != AK4104_RESERVED_VAL)
		return -ENODEV;

	FUNC9(spi, ak4104);

	ret = FUNC7(&spi->dev,
			&soc_component_device_ak4104, &ak4104_dai, 1);
	return ret;
}