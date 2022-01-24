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
struct snd_ice1712 {int /*<<< orphan*/  i2c; TYPE_1__* card; struct ews_spec* spec; } ;
struct ews_spec {int /*<<< orphan*/ * i2cdevs; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 size_t EWS_I2C_6FIRE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct snd_ice1712 *ice, unsigned char reg)
{
	unsigned char byte;
	struct ews_spec *spec = ice->spec;

	FUNC1(ice->i2c);
	byte = reg;
	if (FUNC3(spec->i2cdevs[EWS_I2C_6FIRE], &byte, 1) != 1) {
		FUNC4(ice->i2c);
		FUNC0(ice->card->dev, "cannot send pca\n");
		return -EIO;
	}

	byte = 0;
	if (FUNC2(spec->i2cdevs[EWS_I2C_6FIRE], &byte, 1) != 1) {
		FUNC4(ice->i2c);
		FUNC0(ice->card->dev, "cannot read pca\n");
		return -EIO;
	}
	FUNC4(ice->i2c);
	return byte;
}