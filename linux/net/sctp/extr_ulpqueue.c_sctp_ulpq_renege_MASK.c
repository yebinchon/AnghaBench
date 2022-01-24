#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sctp_ulpq {struct sctp_association* asoc; } ;
struct sctp_data_chunk {int dummy; } ;
struct sctp_chunk {int /*<<< orphan*/  skb; TYPE_1__* chunk_hdr; } ;
struct TYPE_6__ {TYPE_3__* sk; } ;
struct sctp_association {TYPE_2__ base; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  scalar_t__ __u32 ;
typedef  scalar_t__ __u16 ;
struct TYPE_7__ {int /*<<< orphan*/  sk_receive_queue; } ;
struct TYPE_5__ {int /*<<< orphan*/  length; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_ulpq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_ulpq*) ; 
 scalar_t__ FUNC3 (struct sctp_ulpq*,scalar_t__) ; 
 scalar_t__ FUNC4 (struct sctp_ulpq*,scalar_t__) ; 
 int FUNC5 (struct sctp_ulpq*,struct sctp_chunk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 scalar_t__ FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct sctp_ulpq *ulpq, struct sctp_chunk *chunk,
		      gfp_t gfp)
{
	struct sctp_association *asoc = ulpq->asoc;
	__u32 freed = 0;
	__u16 needed;

	needed = FUNC0(chunk->chunk_hdr->length) -
		 sizeof(struct sctp_data_chunk);

	if (FUNC8(&asoc->base.sk->sk_receive_queue)) {
		freed = FUNC4(ulpq, needed);
		if (freed < needed)
			freed += FUNC3(ulpq, needed - freed);
	}
	/* If able to free enough room, accept this chunk. */
	if (FUNC7(asoc->base.sk, chunk->skb, needed) &&
	    freed >= needed) {
		int retval = FUNC5(ulpq, chunk, gfp);
		/*
		 * Enter partial delivery if chunk has not been
		 * delivered; otherwise, drain the reassembly queue.
		 */
		if (retval <= 0)
			FUNC1(ulpq, gfp);
		else if (retval == 1)
			FUNC2(ulpq);
	}

	FUNC6(asoc->base.sk);
}