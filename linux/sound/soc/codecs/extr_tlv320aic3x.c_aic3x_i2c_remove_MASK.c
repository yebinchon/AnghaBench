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
struct i2c_client {int dummy; } ;
struct aic3x_priv {int /*<<< orphan*/  gpio_reset; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aic3x_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct aic3x_priv* FUNC4 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client)
{
	struct aic3x_priv *aic3x = FUNC4(client);

	FUNC5(&aic3x->list);

	if (FUNC2(aic3x->gpio_reset) &&
	    !FUNC0(aic3x)) {
		FUNC3(aic3x->gpio_reset, 0);
		FUNC1(aic3x->gpio_reset);
	}
	return 0;
}