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
typedef  int uint8_t ;
struct sigmadsp {int /*<<< orphan*/  dev; } ;
struct i2c_client {int dummy; } ;
struct adau1701 {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADAU1701_DSPCTRL ; 
 unsigned int ADAU1701_DSPCTRL_IST ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 int EIO ; 
 struct adau1701* FUNC2 (struct i2c_client*) ; 
 int FUNC3 (struct i2c_client*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,int*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 struct i2c_client* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct sigmadsp *sigmadsp, unsigned int addr,
	const uint8_t bytes[], size_t len)
{
	struct i2c_client *client = FUNC9(sigmadsp->dev);
	struct adau1701 *adau1701 = FUNC2(client);
	unsigned int val;
	unsigned int i;
	uint8_t buf[10];
	int ret;

	ret = FUNC7(adau1701->regmap, ADAU1701_DSPCTRL, &val);
	if (ret)
		return ret;

	if (val & ADAU1701_DSPCTRL_IST)
		FUNC5(50);

	for (i = 0; i < len / 4; i++) {
		FUNC6(FUNC1(i), buf);
		buf[2] = 0x00;
		FUNC4(buf + 3, bytes + i * 4, 4);
		ret = FUNC3(client, buf, 7);
		if (ret < 0)
			return ret;
		else if (ret != 7)
			return -EIO;

		FUNC6(FUNC0(i), buf);
		FUNC6(addr + i, buf + 2);
		ret = FUNC3(client, buf, 4);
		if (ret < 0)
			return ret;
		else if (ret != 4)
			return -EIO;
	}

	return FUNC8(adau1701->regmap, ADAU1701_DSPCTRL,
		ADAU1701_DSPCTRL_IST, ADAU1701_DSPCTRL_IST);
}