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
struct rt5514_priv {int /*<<< orphan*/  i2c_regmap; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 unsigned int RT5514_DSP_MAPPING ; 
 struct rt5514_priv* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int,unsigned int*) ; 

__attribute__((used)) static int FUNC2(void *context, unsigned int reg, unsigned int *val)
{
	struct i2c_client *client = context;
	struct rt5514_priv *rt5514 = FUNC0(client);

	FUNC1(rt5514->i2c_regmap, reg | RT5514_DSP_MAPPING, val);

	return 0;
}