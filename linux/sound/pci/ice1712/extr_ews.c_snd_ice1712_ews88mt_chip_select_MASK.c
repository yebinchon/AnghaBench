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
struct snd_ice1712 {TYPE_1__* card; int /*<<< orphan*/  i2c; struct ews_spec* spec; } ;
struct ews_spec {int /*<<< orphan*/ * i2cdevs; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 size_t EWS_I2C_PCF2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct snd_ice1712 *ice, int chip_mask)
{
	struct ews_spec *spec = ice->spec;
	unsigned char data, ndata;

	if (FUNC1(chip_mask < 0 || chip_mask > 0x0f))
		return -EINVAL;
	FUNC2(ice->i2c);
	if (FUNC3(spec->i2cdevs[EWS_I2C_PCF2], &data, 1) != 1)
		goto __error;
	ndata = (data & 0xf0) | chip_mask;
	if (ndata != data)
		if (FUNC4(spec->i2cdevs[EWS_I2C_PCF2], &ndata, 1)
		    != 1)
			goto __error;
	FUNC5(ice->i2c);
	return 0;

     __error:
	FUNC5(ice->i2c);
	FUNC0(ice->card->dev,
		"AK4524 chip select failed, check cable to the front module\n");
	return -EIO;
}