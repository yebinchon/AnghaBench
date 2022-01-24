#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  expires; } ;
struct sctp_transport {int /*<<< orphan*/  rto; TYPE_1__ hb_timer; } ;

/* Variables and functions */
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_transport*) ; 
 unsigned long FUNC3 (struct sctp_transport*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

void FUNC6(struct sctp_transport *transport)
{
	unsigned long expires;

	/* When a data chunk is sent, reset the heartbeat interval.  */
	expires = jiffies + FUNC3(transport);
	if ((FUNC4(transport->hb_timer.expires, expires) ||
	     !FUNC5(&transport->hb_timer)) &&
	    !FUNC0(&transport->hb_timer,
		       expires + FUNC1(transport->rto)))
		FUNC2(transport);
}