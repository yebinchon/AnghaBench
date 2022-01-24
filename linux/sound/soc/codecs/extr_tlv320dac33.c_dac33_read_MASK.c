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
typedef  int u8 ;
struct tlv320dac33_priv {int /*<<< orphan*/  i2c; scalar_t__ chip_power; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (struct snd_soc_component*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 struct tlv320dac33_priv* FUNC4 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_component *component, unsigned int reg,
		      u8 *value)
{
	struct tlv320dac33_priv *dac33 = FUNC4(component);
	int val, ret = 0;

	*value = reg & 0xff;

	/* If powered off, return the cached value */
	if (dac33->chip_power) {
		val = FUNC3(dac33->i2c, value[0]);
		if (val < 0) {
			FUNC2(component->dev, "Read failed (%d)\n", val);
			value[0] = FUNC0(component, reg);
			ret = val;
		} else {
			value[0] = val;
			FUNC1(component, reg, val);
		}
	} else {
		value[0] = FUNC0(component, reg);
	}

	return ret;
}