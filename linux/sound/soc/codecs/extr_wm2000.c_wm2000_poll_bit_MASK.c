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
typedef  unsigned int u8 ;
struct wm2000_priv {int /*<<< orphan*/  regmap; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 struct wm2000_priv* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int,unsigned int*) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *i2c,
			   unsigned int reg, u8 mask)
{
	struct wm2000_priv *wm2000 = FUNC0(i2c);
	int timeout = 4000;
	unsigned int val;

	FUNC2(wm2000->regmap, reg, &val);

	while (!(val & mask) && --timeout) {
		FUNC1(1);
		FUNC2(wm2000->regmap, reg, &val);
	}

	if (timeout == 0)
		return 0;
	else
		return 1;
}