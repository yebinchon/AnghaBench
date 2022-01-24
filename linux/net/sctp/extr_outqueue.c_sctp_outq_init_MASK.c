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
struct sctp_outq {int /*<<< orphan*/  abandoned; int /*<<< orphan*/  sacked; int /*<<< orphan*/  retransmit; int /*<<< orphan*/  control_chunk_list; int /*<<< orphan*/  out_chunk_list; struct sctp_association* asoc; } ;
struct TYPE_3__ {int /*<<< orphan*/  sk; } ;
struct sctp_association {TYPE_1__ base; } ;
struct TYPE_4__ {int /*<<< orphan*/  default_ss; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_outq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_association*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct sctp_association *asoc, struct sctp_outq *q)
{
	FUNC1(q, 0, sizeof(struct sctp_outq));

	q->asoc = asoc;
	FUNC0(&q->out_chunk_list);
	FUNC0(&q->control_chunk_list);
	FUNC0(&q->retransmit);
	FUNC0(&q->sacked);
	FUNC0(&q->abandoned);
	FUNC2(asoc, FUNC3(asoc->base.sk)->default_ss);
}