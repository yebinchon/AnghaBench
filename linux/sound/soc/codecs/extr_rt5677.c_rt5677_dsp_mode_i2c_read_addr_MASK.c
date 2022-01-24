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
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct rt5677_priv {int /*<<< orphan*/  dsp_cmd_lock; int /*<<< orphan*/  regmap_physical; struct snd_soc_component* component; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT5677_DSP_I2C_ADDR_LSB ; 
 int /*<<< orphan*/  RT5677_DSP_I2C_ADDR_MSB ; 
 int /*<<< orphan*/  RT5677_DSP_I2C_DATA_LSB ; 
 int /*<<< orphan*/  RT5677_DSP_I2C_DATA_MSB ; 
 int /*<<< orphan*/  RT5677_DSP_I2C_OP_CODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(
	struct rt5677_priv *rt5677, unsigned int addr, unsigned int *value)
{
	struct snd_soc_component *component = rt5677->component;
	int ret;
	unsigned int msb, lsb;

	FUNC1(&rt5677->dsp_cmd_lock);

	ret = FUNC4(rt5677->regmap_physical, RT5677_DSP_I2C_ADDR_MSB,
		addr >> 16);
	if (ret < 0) {
		FUNC0(component->dev, "Failed to set addr msb value: %d\n", ret);
		goto err;
	}

	ret = FUNC4(rt5677->regmap_physical, RT5677_DSP_I2C_ADDR_LSB,
		addr & 0xffff);
	if (ret < 0) {
		FUNC0(component->dev, "Failed to set addr lsb value: %d\n", ret);
		goto err;
	}

	ret = FUNC4(rt5677->regmap_physical, RT5677_DSP_I2C_OP_CODE,
		0x0002);
	if (ret < 0) {
		FUNC0(component->dev, "Failed to set op code value: %d\n", ret);
		goto err;
	}

	FUNC3(rt5677->regmap_physical, RT5677_DSP_I2C_DATA_MSB, &msb);
	FUNC3(rt5677->regmap_physical, RT5677_DSP_I2C_DATA_LSB, &lsb);
	*value = (msb << 16) | lsb;

err:
	FUNC2(&rt5677->dsp_cmd_lock);

	return ret;
}