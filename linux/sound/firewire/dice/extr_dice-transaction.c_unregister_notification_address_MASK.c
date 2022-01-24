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
typedef  int u64 ;
struct TYPE_4__ {int offset; } ;
struct snd_dice {int owner_generation; int /*<<< orphan*/  unit; TYPE_2__ notification_handler; } ;
struct fw_device {TYPE_1__* card; } ;
typedef  int /*<<< orphan*/  __be64 ;
struct TYPE_3__ {scalar_t__ node_id; } ;

/* Variables and functions */
 int FW_FIXED_GENERATION ; 
 int FW_QUIET ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GLOBAL_OWNER ; 
 int OWNER_NODE_SHIFT ; 
 int OWNER_NO_OWNER ; 
 int /*<<< orphan*/  SND_DICE_ADDR_TYPE_GLOBAL ; 
 int /*<<< orphan*/  TCODE_LOCK_COMPARE_SWAP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct fw_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_dice*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC6(struct snd_dice *dice)
{
	struct fw_device *device = FUNC1(dice->unit);
	__be64 *buffer;

	buffer = FUNC4(2 * 8, GFP_KERNEL);
	if (buffer == NULL)
		return;

	buffer[0] = FUNC0(
		((u64)device->card->node_id << OWNER_NODE_SHIFT) |
		dice->notification_handler.offset);
	buffer[1] = FUNC0(OWNER_NO_OWNER);
	FUNC5(dice->unit, TCODE_LOCK_COMPARE_SWAP,
			   FUNC2(dice, SND_DICE_ADDR_TYPE_GLOBAL,
				       GLOBAL_OWNER),
			   buffer, 2 * 8, FW_QUIET |
			   FW_FIXED_GENERATION | dice->owner_generation);

	FUNC3(buffer);

	dice->owner_generation = -1;
}