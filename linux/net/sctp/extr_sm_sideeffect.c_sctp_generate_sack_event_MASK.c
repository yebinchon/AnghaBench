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
struct timer_list {int dummy; } ;
struct sctp_association {int dummy; } ;

/* Variables and functions */
 size_t SCTP_EVENT_TIMEOUT_SACK ; 
 struct sctp_association* asoc ; 
 struct sctp_association* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_association*,size_t) ; 
 int /*<<< orphan*/ * timers ; 

__attribute__((used)) static void FUNC2(struct timer_list *t)
{
	struct sctp_association *asoc =
		FUNC0(asoc, t, timers[SCTP_EVENT_TIMEOUT_SACK]);

	FUNC1(asoc, SCTP_EVENT_TIMEOUT_SACK);
}