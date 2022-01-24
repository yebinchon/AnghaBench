#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct TYPE_6__ {int offset; } ;
struct snd_dice {int owner_generation; TYPE_3__* unit; TYPE_2__ notification_handler; } ;
struct fw_device {int generation; TYPE_1__* card; } ;
typedef  scalar_t__ __be64 ;
struct TYPE_7__ {int /*<<< orphan*/  device; } ;
struct TYPE_5__ {scalar_t__ node_id; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EBUSY ; 
 int ENOMEM ; 
 int FW_FIXED_GENERATION ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GLOBAL_OWNER ; 
 int OWNER_NODE_SHIFT ; 
 int OWNER_NO_OWNER ; 
 int /*<<< orphan*/  SND_DICE_ADDR_TYPE_GLOBAL ; 
 int /*<<< orphan*/  TCODE_LOCK_COMPARE_SWAP ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct fw_device* FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_dice*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 
 scalar_t__* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int,int) ; 

__attribute__((used)) static int FUNC9(struct snd_dice *dice, bool retry)
{
	struct fw_device *device = FUNC2(dice->unit);
	__be64 *buffer;
	unsigned int retries;
	int err;

	retries = (retry) ? 3 : 0;

	buffer = FUNC5(2 * 8, GFP_KERNEL);
	if (!buffer)
		return -ENOMEM;

	for (;;) {
		buffer[0] = FUNC0(OWNER_NO_OWNER);
		buffer[1] = FUNC0(
			((u64)device->card->node_id << OWNER_NODE_SHIFT) |
			dice->notification_handler.offset);

		dice->owner_generation = device->generation;
		FUNC7(); /* node_id vs. generation */
		err = FUNC8(dice->unit, TCODE_LOCK_COMPARE_SWAP,
					 FUNC3(dice,
						     SND_DICE_ADDR_TYPE_GLOBAL,
						     GLOBAL_OWNER),
					 buffer, 2 * 8,
					 FW_FIXED_GENERATION |
							dice->owner_generation);
		if (err == 0) {
			/* success */
			if (buffer[0] == FUNC0(OWNER_NO_OWNER))
				break;
			/* The address seems to be already registered. */
			if (buffer[0] == buffer[1])
				break;

			FUNC1(&dice->unit->device,
				"device is already in use\n");
			err = -EBUSY;
		}
		if (err != -EAGAIN || retries-- > 0)
			break;

		FUNC6(20);
	}

	FUNC4(buffer);

	if (err < 0)
		dice->owner_generation = -1;

	return err;
}