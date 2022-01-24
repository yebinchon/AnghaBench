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
typedef  int u32 ;
struct TYPE_4__ {int channel; } ;
struct TYPE_3__ {int channel; } ;
struct snd_dg00x {int /*<<< orphan*/  unit; TYPE_2__ rx_resources; TYPE_1__ tx_resources; } ;
typedef  int /*<<< orphan*/  data ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ DG00X_ADDR_BASE ; 
 scalar_t__ DG00X_OFFSET_ISOC_CHANNELS ; 
 scalar_t__ DG00X_OFFSET_STREAMING_SET ; 
 scalar_t__ DG00X_OFFSET_STREAMING_STATE ; 
 int /*<<< orphan*/  TCODE_READ_QUADLET_REQUEST ; 
 int /*<<< orphan*/  TCODE_WRITE_QUADLET_REQUEST ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_dg00x *dg00x)
{
	__be32 data;
	u32 curr;
	int err;

	// Register isochronous channels for both direction.
	data = FUNC1((dg00x->tx_resources.channel << 16) |
			   dg00x->rx_resources.channel);
	err = FUNC3(dg00x->unit, TCODE_WRITE_QUADLET_REQUEST,
				 DG00X_ADDR_BASE + DG00X_OFFSET_ISOC_CHANNELS,
				 &data, sizeof(data), 0);
	if (err < 0)
		return err;

	err = FUNC3(dg00x->unit, TCODE_READ_QUADLET_REQUEST,
				 DG00X_ADDR_BASE + DG00X_OFFSET_STREAMING_STATE,
				 &data, sizeof(data), 0);
	if (err < 0)
		return err;
	curr = FUNC0(data);

	if (curr == 0)
		curr = 2;

	curr--;
	while (curr > 0) {
		data = FUNC1(curr);
		err = FUNC3(dg00x->unit,
					 TCODE_WRITE_QUADLET_REQUEST,
					 DG00X_ADDR_BASE +
					 DG00X_OFFSET_STREAMING_SET,
					 &data, sizeof(data), 0);
		if (err < 0)
			break;

		FUNC2(20);
		curr--;
	}

	return err;
}