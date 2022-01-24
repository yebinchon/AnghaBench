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
struct spi_device_id {int /*<<< orphan*/  driver_data; } ;
struct spi_device {int /*<<< orphan*/  dev; } ;
struct regmap_config {int val_bits; int reg_bits; int read_flag_mask; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct regmap_config adau1977_regmap_config ; 
 int /*<<< orphan*/  adau1977_spi_switch_mode ; 
 int /*<<< orphan*/  FUNC1 (struct spi_device*,struct regmap_config*) ; 
 struct spi_device_id* FUNC2 (struct spi_device*) ; 

__attribute__((used)) static int FUNC3(struct spi_device *spi)
{
	const struct spi_device_id *id = FUNC2(spi);
	struct regmap_config config;

	if (!id)
		return -EINVAL;

	config = adau1977_regmap_config;
	config.val_bits = 8;
	config.reg_bits = 16;
	config.read_flag_mask = 0x1;

	return FUNC0(&spi->dev,
		FUNC1(spi, &config),
		id->driver_data, adau1977_spi_switch_mode);
}