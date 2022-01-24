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
struct regmap_config {int reg_bits; int pad_bits; int val_bits; int read_flag_mask; } ;
struct regmap {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct regmap*) ; 
 struct regmap_config aic32x4_regmap_config ; 
 struct regmap* FUNC1 (struct spi_device*,struct regmap_config*) ; 

__attribute__((used)) static int FUNC2(struct spi_device *spi)
{
	struct regmap *regmap;
	struct regmap_config config;

	config = aic32x4_regmap_config;
	config.reg_bits = 7;
	config.pad_bits = 1;
	config.val_bits = 8;
	config.read_flag_mask = 0x01;

	regmap = FUNC1(spi, &config);
	return FUNC0(&spi->dev, regmap);
}