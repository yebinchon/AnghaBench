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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_5__ {TYPE_1__* packets; int /*<<< orphan*/  iso_buffer; } ;
struct isight {unsigned int packet_index; unsigned int total_samples; int first_packet; int /*<<< orphan*/  context; TYPE_3__* unit; TYPE_2__ buffer; } ;
struct fw_iso_context {int dummy; } ;
struct audio_payload {scalar_t__ signature; int /*<<< orphan*/  samples; int /*<<< orphan*/  sample_total; int /*<<< orphan*/  sample_count; } ;
struct TYPE_6__ {int /*<<< orphan*/  device; } ;
struct TYPE_4__ {int /*<<< orphan*/  offset; struct audio_payload* buffer; } ;

/* Variables and functions */
 unsigned int QUEUE_LENGTH ; 
 int /*<<< orphan*/  audio_packet ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (void*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct isight*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct isight*) ; 
 int /*<<< orphan*/  FUNC8 (struct isight*,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC9 (int) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(struct fw_iso_context *context, u32 cycle,
			  size_t header_length, void *header, void *data)
{
	struct isight *isight = data;
	const struct audio_payload *payload;
	unsigned int index, length, count, total;
	int err;

	if (isight->packet_index < 0)
		return;
	index = isight->packet_index;
	payload = isight->buffer.packets[index].buffer;
	length = FUNC1(header) >> 16;

	if (FUNC9(length >= 16 &&
		   payload->signature == FUNC2(0x73676874/*"sght"*/))) {
		count = FUNC0(payload->sample_count);
		if (FUNC9(count <= (length - 16) / 4)) {
			total = FUNC0(payload->sample_total);
			if (FUNC10(total != isight->total_samples)) {
				if (!isight->first_packet)
					FUNC6(isight, total);
				isight->first_packet = false;
				isight->total_samples = total;
			}

			FUNC8(isight, payload->samples, count);
			isight->total_samples += count;
		}
	}

	err = FUNC4(isight->context, &audio_packet,
				   &isight->buffer.iso_buffer,
				   isight->buffer.packets[index].offset);
	if (err < 0) {
		FUNC3(&isight->unit->device, "queueing error: %d\n", err);
		FUNC7(isight);
		isight->packet_index = -1;
		return;
	}
	FUNC5(isight->context);

	if (++index >= QUEUE_LENGTH)
		index = 0;
	isight->packet_index = index;
}