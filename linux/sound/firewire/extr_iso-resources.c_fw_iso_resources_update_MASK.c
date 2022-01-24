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
struct fw_iso_resources {int allocated; int bandwidth_overhead; int bandwidth; unsigned long long channel; int /*<<< orphan*/  mutex; TYPE_2__* unit; int /*<<< orphan*/  generation; } ;
struct fw_card {int /*<<< orphan*/  lock; int /*<<< orphan*/  generation; } ;
struct TYPE_4__ {int /*<<< orphan*/  device; } ;
struct TYPE_3__ {struct fw_card* card; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EBUSY ; 
 int FUNC0 (struct fw_card*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct fw_card*,int /*<<< orphan*/ ,unsigned long long,int*,int*,int) ; 
 TYPE_1__* FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct fw_iso_resources *r)
{
	struct fw_card *card = FUNC3(r->unit)->card;
	int bandwidth, channel;

	FUNC4(&r->mutex);

	if (!r->allocated) {
		FUNC5(&r->mutex);
		return 0;
	}

	FUNC6(&card->lock);
	r->generation = card->generation;
	r->bandwidth_overhead = FUNC0(card);
	FUNC7(&card->lock);

	bandwidth = r->bandwidth + r->bandwidth_overhead;

	FUNC2(card, r->generation, 1uLL << r->channel,
			       &channel, &bandwidth, true);
	/*
	 * When another bus reset happens, pretend that the allocation
	 * succeeded; we will try again for the new generation later.
	 */
	if (channel < 0 && channel != -EAGAIN) {
		r->allocated = false;
		if (channel == -EBUSY)
			FUNC1(&r->unit->device,
				"isochronous resources exhausted\n");
		else
			FUNC1(&r->unit->device,
				"isochronous resource allocation failed\n");
	}

	FUNC5(&r->mutex);

	return channel;
}