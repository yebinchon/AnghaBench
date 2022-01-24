#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct adau1977_platform_data {unsigned int micbias; } ;
struct adau1977 {int /*<<< orphan*/  regmap; TYPE_1__* dev; } ;
struct TYPE_3__ {struct adau1977_platform_data* platform_data; } ;

/* Variables and functions */
 unsigned int ADAU1977_MICBIAS_8V5 ; 
 unsigned int ADAU1977_MICBIAS_9V0 ; 
 int /*<<< orphan*/  ADAU1977_MICBIAS_MB_VOLTS_MASK ; 
 unsigned int ADAU1977_MICBIAS_MB_VOLTS_OFFSET ; 
 int /*<<< orphan*/  ADAU1977_REG_MICBIAS ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,char*,unsigned int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct adau1977 *adau1977)
{
	struct adau1977_platform_data *pdata = adau1977->dev->platform_data;
	unsigned int micbias;

	if (pdata)
		micbias = pdata->micbias;
	else if (FUNC1(adau1977->dev, "adi,micbias",
					  &micbias))
		micbias = ADAU1977_MICBIAS_8V5;

	if (micbias > ADAU1977_MICBIAS_9V0) {
		FUNC0(adau1977->dev, "Invalid value for 'adi,micbias'\n");
		return -EINVAL;
	}

	return FUNC2(adau1977->regmap, ADAU1977_REG_MICBIAS,
		ADAU1977_MICBIAS_MB_VOLTS_MASK,
		micbias << ADAU1977_MICBIAS_MB_VOLTS_OFFSET);
}