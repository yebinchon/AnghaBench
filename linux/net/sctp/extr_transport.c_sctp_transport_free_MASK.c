#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sctp_transport {int /*<<< orphan*/  asoc; int /*<<< orphan*/  proto_unreach_timer; int /*<<< orphan*/  reconf_timer; int /*<<< orphan*/  T3_rtx_timer; int /*<<< orphan*/  hb_timer; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_transport*) ; 

void FUNC3(struct sctp_transport *transport)
{
	/* Try to delete the heartbeat timer.  */
	if (FUNC0(&transport->hb_timer))
		FUNC2(transport);

	/* Delete the T3_rtx timer if it's active.
	 * There is no point in not doing this now and letting
	 * structure hang around in memory since we know
	 * the tranport is going away.
	 */
	if (FUNC0(&transport->T3_rtx_timer))
		FUNC2(transport);

	if (FUNC0(&transport->reconf_timer))
		FUNC2(transport);

	/* Delete the ICMP proto unreachable timer if it's active. */
	if (FUNC0(&transport->proto_unreach_timer))
		FUNC1(transport->asoc);

	FUNC2(transport);
}