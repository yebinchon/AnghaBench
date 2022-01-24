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
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  soc_component_dev_wm1250_ev1 ; 
 int /*<<< orphan*/  wm1250_ev1_dai ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*) ; 
 int FUNC6 (struct i2c_client*) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *i2c,
			    const struct i2c_device_id *i2c_id)
{
	int id, board, rev, ret;

	FUNC2(&i2c->dev, NULL);

	board = FUNC4(i2c, 0);
	if (board < 0) {
		FUNC0(&i2c->dev, "Failed to read ID: %d\n", board);
		return board;
	}

	id = (board & 0xfe) >> 2;
	rev = board & 0x3;

	if (id != 1) {
		FUNC0(&i2c->dev, "Unknown board ID %d\n", id);
		return -ENODEV;
	}

	FUNC1(&i2c->dev, "revision %d\n", rev + 1);

	ret = FUNC6(i2c);
	if (ret != 0)
		return ret;

	ret = FUNC3(&i2c->dev, &soc_component_dev_wm1250_ev1,
				     &wm1250_ev1_dai, 1);
	if (ret != 0) {
		FUNC0(&i2c->dev, "Failed to register CODEC: %d\n", ret);
		FUNC5(i2c);
		return ret;
	}

	return 0;
}