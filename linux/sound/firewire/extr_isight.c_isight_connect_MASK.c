#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int generation; } ;
struct isight {TYPE_2__ resources; scalar_t__ audio_base; int /*<<< orphan*/  unit; TYPE_1__* device; } ;
struct audio_payload {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_4__ {int max_speed; } ;

/* Variables and functions */
 int EAGAIN ; 
 int FW_FIXED_GENERATION ; 
 scalar_t__ REG_ISO_TX_CONFIG ; 
 int SPEED_SHIFT ; 
 int /*<<< orphan*/  TCODE_WRITE_QUADLET_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC4(struct isight *isight)
{
	int ch, err;
	__be32 value;

retry_after_bus_reset:
	ch = FUNC1(&isight->resources,
				       sizeof(struct audio_payload),
				       isight->device->max_speed);
	if (ch < 0) {
		err = ch;
		goto error;
	}

	value = FUNC0(ch | (isight->device->max_speed << SPEED_SHIFT));
	err = FUNC3(isight->unit, TCODE_WRITE_QUADLET_REQUEST,
				 isight->audio_base + REG_ISO_TX_CONFIG,
				 &value, 4, FW_FIXED_GENERATION |
				 isight->resources.generation);
	if (err == -EAGAIN) {
		FUNC2(&isight->resources);
		goto retry_after_bus_reset;
	} else if (err < 0) {
		goto err_resources;
	}

	return 0;

err_resources:
	FUNC2(&isight->resources);
error:
	return err;
}