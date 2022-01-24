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
struct TYPE_2__ {int dead; int /*<<< orphan*/  sk; } ;
struct sctp_endpoint {TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCTP_SS_CLOSED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_endpoint*) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_endpoint*) ; 

void FUNC3(struct sctp_endpoint *ep)
{
	ep->base.dead = true;

	FUNC0(ep->base.sk, SCTP_SS_CLOSED);

	/* Unlink this endpoint, so we can't find it again! */
	FUNC2(ep);

	FUNC1(ep);
}