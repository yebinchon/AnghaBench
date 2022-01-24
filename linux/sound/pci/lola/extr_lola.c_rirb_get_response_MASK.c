#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  cmds; } ;
struct lola {int polling_mode; unsigned int res; unsigned int res_ex; TYPE_2__* card; int /*<<< orphan*/  last_extdata; int /*<<< orphan*/  last_data; int /*<<< orphan*/  last_verb; int /*<<< orphan*/  last_cmd_nid; TYPE_1__ rirb; int /*<<< orphan*/  reg_lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int LOLA_RIRB_EX_ERROR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC2 (struct lola*) ; 
 unsigned long FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC9(struct lola *chip, unsigned int *val,
			     unsigned int *extval)
{
	unsigned long timeout;

 again:
	timeout = jiffies + FUNC3(1000);
	for (;;) {
		if (chip->polling_mode) {
			FUNC4(&chip->reg_lock);
			FUNC2(chip);
			FUNC5(&chip->reg_lock);
		}
		if (!chip->rirb.cmds) {
			*val = chip->res;
			if (extval)
				*extval = chip->res_ex;
			FUNC8("get_response: %x, %x\n",
				      chip->res, chip->res_ex);
			if (chip->res_ex & LOLA_RIRB_EX_ERROR) {
				FUNC1(chip->card->dev, "RIRB ERROR: "
				       "NID=%x, verb=%x, data=%x, ext=%x\n",
				       chip->last_cmd_nid,
				       chip->last_verb, chip->last_data,
				       chip->last_extdata);
				return -EIO;
			}
			return 0;
		}
		if (FUNC6(jiffies, timeout))
			break;
		FUNC7(20);
		FUNC0();
	}
	FUNC1(chip->card->dev, "RIRB response error\n");
	if (!chip->polling_mode) {
		FUNC1(chip->card->dev, "switching to polling mode\n");
		chip->polling_mode = 1;
		goto again;
	}
	return -EIO;
}