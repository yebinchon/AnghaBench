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
struct wm8990_priv {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct wm8990_priv* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,struct wm8990_priv*) ; 
 int /*<<< orphan*/  soc_component_dev_wm8990 ; 
 int /*<<< orphan*/  wm8990_dai ; 

__attribute__((used)) static int FUNC3(struct i2c_client *i2c,
			    const struct i2c_device_id *id)
{
	struct wm8990_priv *wm8990;
	int ret;

	wm8990 = FUNC0(&i2c->dev, sizeof(struct wm8990_priv),
			      GFP_KERNEL);
	if (wm8990 == NULL)
		return -ENOMEM;

	FUNC2(i2c, wm8990);

	ret = FUNC1(&i2c->dev,
			&soc_component_dev_wm8990, &wm8990_dai, 1);

	return ret;
}