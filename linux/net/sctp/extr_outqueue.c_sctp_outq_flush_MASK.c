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
struct sctp_outq {TYPE_1__* asoc; } ;
struct sctp_flush_ctx {int /*<<< orphan*/  gfp; int /*<<< orphan*/ * packet; TYPE_1__* asoc; int /*<<< orphan*/  transport_list; int /*<<< orphan*/ * transport; struct sctp_outq* q; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {scalar_t__ src_out_of_asoc_ok; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_flush_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_flush_ctx*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sctp_flush_ctx*) ; 

__attribute__((used)) static void FUNC4(struct sctp_outq *q, int rtx_timeout, gfp_t gfp)
{
	struct sctp_flush_ctx ctx = {
		.q = q,
		.transport = NULL,
		.transport_list = FUNC0(ctx.transport_list),
		.asoc = q->asoc,
		.packet = NULL,
		.gfp = gfp,
	};

	/* 6.10 Bundling
	 *   ...
	 *   When bundling control chunks with DATA chunks, an
	 *   endpoint MUST place control chunks first in the outbound
	 *   SCTP packet.  The transmitter MUST transmit DATA chunks
	 *   within a SCTP packet in increasing order of TSN.
	 *   ...
	 */

	FUNC1(&ctx);

	if (q->asoc->src_out_of_asoc_ok)
		goto sctp_flush_out;

	FUNC2(&ctx, rtx_timeout);

sctp_flush_out:

	FUNC3(&ctx);
}