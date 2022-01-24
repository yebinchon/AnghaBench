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
struct sctp_ulpq {TYPE_2__* asoc; } ;
typedef  int /*<<< orphan*/  __u32 ;
struct TYPE_3__ {int /*<<< orphan*/  tsn_map; } ;
struct TYPE_4__ {TYPE_1__ peer; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_ulpq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_ulpq*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct sctp_ulpq *ulpq, __u32 ftsn)
{
	/* Move the Cumulattive TSN Ack ahead. */
	FUNC0(&ulpq->asoc->peer.tsn_map, ftsn);
	/* purge the fragmentation queue */
	FUNC2(ulpq, ftsn);
	/* Abort any in progress partial delivery. */
	FUNC1(ulpq, GFP_ATOMIC);
}