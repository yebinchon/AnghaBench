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
struct tlv320dac33_priv {scalar_t__ power_gpio; int /*<<< orphan*/  component; int /*<<< orphan*/  chip_power; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct tlv320dac33_priv* FUNC2 (struct i2c_client*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client)
{
	struct tlv320dac33_priv *dac33 = FUNC2(client);

	if (FUNC3(dac33->chip_power))
		FUNC0(dac33->component, 0);

	if (dac33->power_gpio >= 0)
		FUNC1(dac33->power_gpio);

	return 0;
}