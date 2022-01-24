#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  (* sc ) (struct fw_iso_context*,int /*<<< orphan*/ ,size_t,void*,struct amdtp_stream*) ;} ;
struct fw_iso_context {TYPE_1__ callback; } ;
struct amdtp_stream {int callbacked; scalar_t__ direction; int /*<<< orphan*/  start_cycle; int /*<<< orphan*/  callback_wait; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ AMDTP_IN_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (struct fw_iso_context*,int /*<<< orphan*/ ,size_t,void*,struct amdtp_stream*) ; 
 int /*<<< orphan*/  FUNC3 (struct fw_iso_context*,int /*<<< orphan*/ ,size_t,void*,struct amdtp_stream*) ; 
 int /*<<< orphan*/  FUNC4 (struct fw_iso_context*,int /*<<< orphan*/ ,size_t,void*,struct amdtp_stream*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct fw_iso_context *context,
					u32 tstamp, size_t header_length,
					void *header, void *private_data)
{
	struct amdtp_stream *s = private_data;
	const __be32 *ctx_header = header;
	u32 cycle;

	/*
	 * For in-stream, first packet has come.
	 * For out-stream, prepared to transmit first packet
	 */
	s->callbacked = true;
	FUNC5(&s->callback_wait);

	if (s->direction == AMDTP_IN_STREAM) {
		cycle = FUNC0(ctx_header[1]);

		context->callback.sc = in_stream_callback;
	} else {
		cycle = FUNC1(*ctx_header);

		context->callback.sc = out_stream_callback;
	}

	s->start_cycle = cycle;

	context->callback.sc(context, tstamp, header_length, header, s);
}