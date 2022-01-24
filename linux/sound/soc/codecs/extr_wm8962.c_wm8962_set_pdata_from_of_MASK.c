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
typedef  int /*<<< orphan*/  u32 ;
struct wm8962_pdata {int spk_mono; int* gpio_init; int /*<<< orphan*/  mclk; int /*<<< orphan*/  mic_cfg; } ;
struct TYPE_2__ {struct device_node* of_node; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct device_node const*,char*) ; 
 scalar_t__ FUNC3 (struct device_node const*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct device_node const*,char*,int*,int) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *i2c,
				    struct wm8962_pdata *pdata)
{
	const struct device_node *np = i2c->dev.of_node;
	u32 val32;
	int i;

	if (FUNC2(np, "spk-mono"))
		pdata->spk_mono = true;

	if (FUNC3(np, "mic-cfg", &val32) >= 0)
		pdata->mic_cfg = val32;

	if (FUNC4(np, "gpio-cfg", pdata->gpio_init,
				       FUNC0(pdata->gpio_init)) >= 0)
		for (i = 0; i < FUNC0(pdata->gpio_init); i++) {
			/*
			 * The range of GPIO register value is [0x0, 0xffff]
			 * While the default value of each register is 0x0
			 * Any other value will be regarded as default value
			 */
			if (pdata->gpio_init[i] > 0xffff)
				pdata->gpio_init[i] = 0x0;
		}

	pdata->mclk = FUNC1(&i2c->dev, NULL);

	return 0;
}