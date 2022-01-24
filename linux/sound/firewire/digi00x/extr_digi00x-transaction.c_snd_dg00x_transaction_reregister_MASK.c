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
struct TYPE_4__ {int offset; } ;
struct snd_dg00x {int /*<<< orphan*/  unit; TYPE_2__ async_handler; } ;
struct fw_device {TYPE_1__* card; } ;
typedef  int /*<<< orphan*/  data ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_3__ {int node_id; } ;

/* Variables and functions */
 scalar_t__ DG00X_ADDR_BASE ; 
 scalar_t__ DG00X_OFFSET_MESSAGE_ADDR ; 
 int /*<<< orphan*/  TCODE_WRITE_BLOCK_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct fw_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ **,int,int /*<<< orphan*/ ) ; 

int FUNC3(struct snd_dg00x *dg00x)
{
	struct fw_device *device = FUNC1(dg00x->unit);
	__be32 data[2];

	/* Unknown. 4bytes. */
	data[0] = FUNC0((device->card->node_id << 16) |
			      (dg00x->async_handler.offset >> 32));
	data[1] = FUNC0(dg00x->async_handler.offset);
	return FUNC2(dg00x->unit, TCODE_WRITE_BLOCK_REQUEST,
				  DG00X_ADDR_BASE + DG00X_OFFSET_MESSAGE_ADDR,
				  &data, sizeof(data), 0);
}