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
struct rt5677_priv {int /*<<< orphan*/  regmap_physical; int /*<<< orphan*/  dsp_pri_lock; scalar_t__ is_dsp_mode; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 unsigned int RT5677_PRIV_DATA ; 
 unsigned int RT5677_PRIV_INDEX ; 
 struct rt5677_priv* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct rt5677_priv*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC5(void *context, unsigned int reg, unsigned int val)
{
	struct i2c_client *client = context;
	struct rt5677_priv *rt5677 = FUNC0(client);

	if (rt5677->is_dsp_mode) {
		if (reg > 0xff) {
			FUNC1(&rt5677->dsp_pri_lock);
			FUNC4(rt5677, RT5677_PRIV_INDEX,
				reg & 0xff);
			FUNC4(rt5677, RT5677_PRIV_DATA,
				val);
			FUNC2(&rt5677->dsp_pri_lock);
		} else {
			FUNC4(rt5677, reg, val);
		}
	} else {
		FUNC3(rt5677->regmap_physical, reg, val);
	}

	return 0;
}