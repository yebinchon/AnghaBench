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
struct sk_buff_head {int dummy; } ;
struct sctp_ulpq {int /*<<< orphan*/  reasm; } ;
struct sctp_ulpevent {int msg_flags; } ;

/* Variables and functions */
 int MSG_EOR ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_ulpevent*) ; 
 struct sctp_ulpevent* FUNC2 (struct sctp_ulpq*,struct sctp_ulpevent*) ; 
 struct sctp_ulpevent* FUNC3 (struct sctp_ulpq*) ; 
 int /*<<< orphan*/  FUNC4 (struct sctp_ulpq*,struct sk_buff_head*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff_head*) ; 

__attribute__((used)) static void FUNC7(struct sctp_ulpq *ulpq)
{
	struct sctp_ulpevent *event = NULL;

	if (FUNC5(&ulpq->reasm))
		return;

	while ((event = FUNC3(ulpq)) != NULL) {
		struct sk_buff_head temp;

		FUNC6(&temp);
		FUNC0(&temp, FUNC1(event));

		/* Do ordering if needed.  */
		if (event->msg_flags & MSG_EOR)
			event = FUNC2(ulpq, event);

		/* Send event to the ULP.  'event' is the
		 * sctp_ulpevent for  very first SKB on the  temp' list.
		 */
		if (event)
			FUNC4(ulpq, &temp);
	}
}