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
struct tas6424_data {int /*<<< orphan*/  supplies; scalar_t__ standby_gpio; int /*<<< orphan*/  fault_check_work; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 struct tas6424_data* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client)
{
	struct device *dev = &client->dev;
	struct tas6424_data *tas6424 = FUNC3(dev);
	int ret;

	FUNC1(&tas6424->fault_check_work);

	/* put the codec in stand-by */
	if (tas6424->standby_gpio)
		FUNC4(tas6424->standby_gpio, 1);

	ret = FUNC5(FUNC0(tas6424->supplies),
				     tas6424->supplies);
	if (ret < 0) {
		FUNC2(dev, "unable to disable supplies: %d\n", ret);
		return ret;
	}

	return 0;
}