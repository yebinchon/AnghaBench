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
struct sctp_ulpq {int /*<<< orphan*/  reasm_uo; int /*<<< orphan*/  reasm; int /*<<< orphan*/  lobby; struct sctp_association* asoc; } ;
struct sctp_idata_chunk {int dummy; } ;
struct sctp_chunk {TYPE_1__* chunk_hdr; } ;
struct TYPE_5__ {TYPE_3__* sk; } ;
struct sctp_association {TYPE_2__ base; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  scalar_t__ __u32 ;
typedef  scalar_t__ __u16 ;
struct TYPE_6__ {int /*<<< orphan*/  sk_receive_queue; } ;
struct TYPE_4__ {int /*<<< orphan*/  length; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_ulpq*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sctp_ulpq*,struct sctp_chunk*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sctp_ulpq*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct sctp_ulpq *ulpq, struct sctp_chunk *chunk,
			       gfp_t gfp)
{
	struct sctp_association *asoc = ulpq->asoc;
	__u32 freed = 0;
	__u16 needed;

	needed = FUNC0(chunk->chunk_hdr->length) -
		 sizeof(struct sctp_idata_chunk);

	if (FUNC5(&asoc->base.sk->sk_receive_queue)) {
		freed = FUNC3(ulpq, &ulpq->lobby, needed);
		if (freed < needed)
			freed += FUNC3(ulpq, &ulpq->reasm,
						       needed);
		if (freed < needed)
			freed += FUNC3(ulpq, &ulpq->reasm_uo,
						       needed);
	}

	if (freed >= needed && FUNC2(ulpq, chunk, gfp) <= 0)
		FUNC1(ulpq, gfp);

	FUNC4(asoc->base.sk);
}