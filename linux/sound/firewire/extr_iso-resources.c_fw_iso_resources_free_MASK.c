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
struct fw_iso_resources {int allocated; int bandwidth; int bandwidth_overhead; unsigned long long channel; int /*<<< orphan*/  mutex; TYPE_2__* unit; int /*<<< orphan*/  generation; } ;
struct fw_card {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  device; } ;
struct TYPE_3__ {struct fw_card* card; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct fw_card*,int /*<<< orphan*/ ,unsigned long long,int*,int*,int) ; 
 TYPE_1__* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct fw_iso_resources *r)
{
	struct fw_card *card;
	int bandwidth, channel;

	/* Not initialized. */
	if (r->unit == NULL)
		return;
	card = FUNC2(r->unit)->card;

	FUNC3(&r->mutex);

	if (r->allocated) {
		bandwidth = r->bandwidth + r->bandwidth_overhead;
		FUNC1(card, r->generation, 1uLL << r->channel,
				       &channel, &bandwidth, false);
		if (channel < 0)
			FUNC0(&r->unit->device,
				"isochronous resource deallocation failed\n");

		r->allocated = false;
	}

	FUNC4(&r->mutex);
}