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
struct max98090_priv {int /*<<< orphan*/  regmap; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  M98090_REG_DEVICE_SHUTDOWN ; 
 int /*<<< orphan*/  M98090_REG_LEVEL_CONTROL ; 
 int M98090_VSENN_MASK ; 
 struct max98090_priv* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct i2c_client *i2c)
{
	struct max98090_priv *max98090 = FUNC0(&i2c->dev);

	/*
	 * Enable volume smoothing, disable zero cross.  This will cause
	 * a quick 40ms ramp to mute on shutdown.
	 */
	FUNC2(max98090->regmap,
		M98090_REG_LEVEL_CONTROL, M98090_VSENN_MASK);
	FUNC2(max98090->regmap,
		M98090_REG_DEVICE_SHUTDOWN, 0x00);
	FUNC1(40);
}