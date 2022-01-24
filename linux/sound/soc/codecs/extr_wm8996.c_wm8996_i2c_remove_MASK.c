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
struct TYPE_2__ {scalar_t__ ldo_ena; } ;
struct wm8996_priv {TYPE_1__ pdata; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct wm8996_priv* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (struct wm8996_priv*) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client)
{
	struct wm8996_priv *wm8996 = FUNC2(client);

	FUNC3(wm8996);
	if (wm8996->pdata.ldo_ena > 0) {
		FUNC1(wm8996->pdata.ldo_ena, 0);
		FUNC0(wm8996->pdata.ldo_ena);
	}

	return 0;
}