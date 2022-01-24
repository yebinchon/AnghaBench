#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int data_block_quadlets; } ;
struct TYPE_8__ {unsigned int generation; } ;
struct snd_ff {int /*<<< orphan*/  unit; TYPE_1__ tx_stream; TYPE_4__ rx_resources; } ;
typedef  int /*<<< orphan*/  reg ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_7__ {scalar_t__ max_speed; TYPE_2__* card; } ;
struct TYPE_6__ {unsigned int generation; } ;

/* Variables and functions */
 int /*<<< orphan*/  FF800_ISOC_COMM_START ; 
 int FF800_TX_S800_FLAG ; 
 scalar_t__ SCODE_800 ; 
 int /*<<< orphan*/  TCODE_WRITE_QUADLET_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_4__*) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_ff *ff, unsigned int rate)
{
	unsigned int generation = ff->rx_resources.generation;
	__le32 reg;

	if (generation != FUNC2(ff->unit)->card->generation) {
		int err = FUNC1(&ff->rx_resources);
		if (err < 0)
			return err;
	}

	reg = FUNC0(0x80000000);
	reg |= FUNC0(ff->tx_stream.data_block_quadlets);
	if (FUNC2(ff->unit)->max_speed == SCODE_800)
		reg |= FUNC0(FF800_TX_S800_FLAG);
	return FUNC3(ff->unit, TCODE_WRITE_QUADLET_REQUEST,
				 FF800_ISOC_COMM_START, &reg, sizeof(reg), 0);
}