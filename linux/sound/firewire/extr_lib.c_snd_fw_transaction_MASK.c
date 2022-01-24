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
typedef  int /*<<< orphan*/  u64 ;
struct fw_unit {int /*<<< orphan*/  device; } ;
struct fw_device {int generation; int /*<<< orphan*/  max_speed; int /*<<< orphan*/  node_id; int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EIO ; 
 int /*<<< orphan*/  ERROR_RETRY_DELAY_MS ; 
 unsigned int FW_FIXED_GENERATION ; 
 unsigned int FW_GENERATION_MASK ; 
 unsigned int FW_QUIET ; 
 int RCODE_COMPLETE ; 
 int RCODE_GENERATION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct fw_device* FUNC1 (struct fw_unit*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 

int FUNC7(struct fw_unit *unit, int tcode,
		       u64 offset, void *buffer, size_t length,
		       unsigned int flags)
{
	struct fw_device *device = FUNC1(unit);
	int generation, rcode, tries = 0;

	generation = flags & FW_GENERATION_MASK;
	for (;;) {
		if (!(flags & FW_FIXED_GENERATION)) {
			generation = device->generation;
			FUNC6(); /* node_id vs. generation */
		}
		rcode = FUNC3(device->card, tcode,
					   device->node_id, generation,
					   device->max_speed, offset,
					   buffer, length);

		if (rcode == RCODE_COMPLETE)
			return 0;

		if (rcode == RCODE_GENERATION && (flags & FW_FIXED_GENERATION))
			return -EAGAIN;

		if (FUNC5(rcode) || ++tries >= 3) {
			if (!(flags & FW_QUIET))
				FUNC0(&unit->device,
					"transaction failed: %s\n",
					FUNC2(rcode));
			return -EIO;
		}

		FUNC4(ERROR_RETRY_DELAY_MS);
	}
}