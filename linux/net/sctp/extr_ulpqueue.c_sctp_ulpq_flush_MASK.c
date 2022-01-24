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
struct sk_buff {int dummy; } ;
struct sctp_ulpq {int /*<<< orphan*/  reasm_uo; int /*<<< orphan*/  reasm; int /*<<< orphan*/  lobby; } ;
struct sctp_ulpevent {int dummy; } ;

/* Variables and functions */
 struct sk_buff* FUNC0 (int /*<<< orphan*/ *) ; 
 struct sctp_ulpevent* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_ulpevent*) ; 

void FUNC3(struct sctp_ulpq *ulpq)
{
	struct sk_buff *skb;
	struct sctp_ulpevent *event;

	while ((skb = FUNC0(&ulpq->lobby)) != NULL) {
		event = FUNC1(skb);
		FUNC2(event);
	}

	while ((skb = FUNC0(&ulpq->reasm)) != NULL) {
		event = FUNC1(skb);
		FUNC2(event);
	}

	while ((skb = FUNC0(&ulpq->reasm_uo)) != NULL) {
		event = FUNC1(skb);
		FUNC2(event);
	}
}