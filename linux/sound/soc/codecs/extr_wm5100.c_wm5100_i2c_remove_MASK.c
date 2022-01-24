#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ ldo_ena; scalar_t__ reset; } ;
struct wm5100_priv {TYPE_1__ pdata; } ;
struct i2c_client {scalar_t__ irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct wm5100_priv*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct wm5100_priv* FUNC3 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *i2c)
{
	struct wm5100_priv *wm5100 = FUNC3(i2c);

	if (i2c->irq)
		FUNC0(i2c->irq, wm5100);
	FUNC4(i2c);
	if (wm5100->pdata.reset) {
		FUNC2(wm5100->pdata.reset, 0);
		FUNC1(wm5100->pdata.reset);
	}
	if (wm5100->pdata.ldo_ena) {
		FUNC2(wm5100->pdata.ldo_ena, 0);
		FUNC1(wm5100->pdata.ldo_ena);
	}

	return 0;
}