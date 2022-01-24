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
typedef  int /*<<< orphan*/  u32 ;
struct fw_iso_packet {int /*<<< orphan*/  member_0; } ;
struct fw_iso_context {int dummy; } ;
struct TYPE_3__ {size_t ctx_header_size; } ;
struct TYPE_4__ {TYPE_1__ tx; } ;
struct amdtp_stream {scalar_t__ packet_index; int /*<<< orphan*/  context; int /*<<< orphan*/  pkt_descs; TYPE_2__ ctx_data; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (struct amdtp_stream*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct amdtp_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct amdtp_stream*,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC4 (struct amdtp_stream*,struct fw_iso_packet*) ; 

__attribute__((used)) static void FUNC5(struct fw_iso_context *context, u32 tstamp,
			       size_t header_length, void *header,
			       void *private_data)
{
	struct amdtp_stream *s = private_data;
	unsigned int packets;
	__be32 *ctx_header = header;
	int i;
	int err;

	if (s->packet_index < 0)
		return;

	// The number of packets in buffer.
	packets = header_length / s->ctx_data.tx.ctx_header_size;

	err = FUNC2(s, s->pkt_descs, ctx_header, packets);
	if (err < 0) {
		if (err != -EAGAIN) {
			FUNC0(s);
			return;
		}
	} else {
		FUNC3(s, s->pkt_descs, packets);
	}

	for (i = 0; i < packets; ++i) {
		struct fw_iso_packet params = {0};

		if (FUNC4(s, &params) < 0) {
			FUNC0(s);
			return;
		}
	}

	FUNC1(s->context);
}