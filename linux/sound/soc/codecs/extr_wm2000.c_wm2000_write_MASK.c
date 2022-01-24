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
struct wm2000_priv {int /*<<< orphan*/  regmap; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 struct wm2000_priv* FUNC0 (struct i2c_client*) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct i2c_client *i2c, unsigned int reg,
			unsigned int value)
{
	struct wm2000_priv *wm2000 = FUNC0(i2c);
	return FUNC1(wm2000->regmap, reg, value);
}