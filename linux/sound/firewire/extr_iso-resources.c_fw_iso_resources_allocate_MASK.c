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
struct fw_iso_resources {int allocated; int bandwidth; int bandwidth_overhead; int channel; int /*<<< orphan*/  mutex; TYPE_2__* unit; int /*<<< orphan*/  channels_mask; int /*<<< orphan*/  generation; } ;
struct fw_card {int /*<<< orphan*/  lock; int /*<<< orphan*/  generation; } ;
struct TYPE_4__ {int /*<<< orphan*/  device; } ;
struct TYPE_3__ {struct fw_card* card; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EBADFD ; 
 int EBUSY ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct fw_card*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct fw_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*,int) ; 
 TYPE_1__* FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (struct fw_card*) ; 

int FUNC11(struct fw_iso_resources *r,
			      unsigned int max_payload_bytes, int speed)
{
	struct fw_card *card = FUNC4(r->unit)->card;
	int bandwidth, channel, err;

	if (FUNC0(r->allocated))
		return -EBADFD;

	r->bandwidth = FUNC7(max_payload_bytes, speed);

retry_after_bus_reset:
	FUNC8(&card->lock);
	r->generation = card->generation;
	r->bandwidth_overhead = FUNC1(card);
	FUNC9(&card->lock);

	err = FUNC10(card);
	if (err < 0)
		return err;

	FUNC5(&r->mutex);

	bandwidth = r->bandwidth + r->bandwidth_overhead;
	FUNC3(card, r->generation, r->channels_mask,
			       &channel, &bandwidth, true);
	if (channel == -EAGAIN) {
		FUNC6(&r->mutex);
		goto retry_after_bus_reset;
	}
	if (channel >= 0) {
		r->channel = channel;
		r->allocated = true;
	} else {
		if (channel == -EBUSY)
			FUNC2(&r->unit->device,
				"isochronous resources exhausted\n");
		else
			FUNC2(&r->unit->device,
				"isochronous resource allocation failed\n");
	}

	FUNC6(&r->mutex);

	return channel;
}