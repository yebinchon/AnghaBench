#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {unsigned long addr; TYPE_1__* cmds; } ;
struct pmac_stream {int dummy; } ;
struct snd_pmac {TYPE_3__ extra_dma; TYPE_2__* awacs; struct pmac_stream playback; } ;
struct TYPE_5__ {int /*<<< orphan*/  byteswap; int /*<<< orphan*/  control; } ;
struct TYPE_4__ {void* command; void* phy_addr; void* cmd_dep; void* xfer_status; void* req_count; } ;

/* Variables and functions */
 int BR_ALWAYS ; 
 int OUTPUT_MORE ; 
 int /*<<< orphan*/  RUN ; 
 void* FUNC0 (int) ; 
 void* FUNC1 (unsigned long) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pmac_stream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pmac_stream*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (struct pmac_stream*) ; 

void FUNC7(struct snd_pmac *chip, int bytes, unsigned long addr, int speed)
{
	struct pmac_stream *rec = &chip->playback;

	FUNC6(rec);
	chip->extra_dma.cmds->req_count = FUNC0(bytes);
	chip->extra_dma.cmds->xfer_status = FUNC0(0);
	chip->extra_dma.cmds->cmd_dep = FUNC1(chip->extra_dma.addr);
	chip->extra_dma.cmds->phy_addr = FUNC1(addr);
	chip->extra_dma.cmds->command = FUNC0(OUTPUT_MORE + BR_ALWAYS);
	FUNC3(&chip->awacs->control,
		 (FUNC2(&chip->awacs->control) & ~0x1f00)
		 | (speed << 8));
	FUNC3(&chip->awacs->byteswap, 0);
	FUNC5(rec, &chip->extra_dma);
	FUNC4(rec, RUN);
}