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
struct i2sbus_dev {int /*<<< orphan*/  macio; } ;
struct dbdma_command_mem {int size; scalar_t__ space; void* cmds; scalar_t__ bus_addr; scalar_t__ bus_cmd_start; } ;
struct dbdma_cmd {int dummy; } ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,scalar_t__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct i2sbus_dev *i2sdev,
				       struct dbdma_command_mem *r,
				       int numcmds)
{
	/* one more for rounding, one for branch back, one for stop command */
	r->size = (numcmds + 3) * sizeof(struct dbdma_cmd);
	/* We use the PCI APIs for now until the generic one gets fixed
	 * enough or until we get some macio-specific versions
	 */
	r->space = FUNC1(&FUNC2(i2sdev->macio)->dev,
				      r->size, &r->bus_addr, GFP_KERNEL);
	if (!r->space)
		return -ENOMEM;

	r->cmds = (void*)FUNC0(r->space);
	r->bus_cmd_start = r->bus_addr +
			   (dma_addr_t)((char*)r->cmds - (char*)r->space);

	return 0;
}