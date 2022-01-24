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
struct sctp_ulpq {int /*<<< orphan*/  reasm_uo; int /*<<< orphan*/  reasm; } ;
struct sctp_ulpevent {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_ulpq*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_ulpevent*) ; 
 struct sctp_ulpevent* FUNC3 (struct sctp_ulpq*) ; 
 struct sctp_ulpevent* FUNC4 (struct sctp_ulpq*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff_head*) ; 

__attribute__((used)) static void FUNC7(struct sctp_ulpq *ulpq, gfp_t gfp)
{
	struct sctp_ulpevent *event;
	struct sk_buff_head temp;

	if (!FUNC5(&ulpq->reasm)) {
		do {
			event = FUNC3(ulpq);
			if (event) {
				FUNC6(&temp);
				FUNC0(&temp, FUNC2(event));
				FUNC1(ulpq, &temp);
			}
		} while (event);
	}

	if (!FUNC5(&ulpq->reasm_uo)) {
		do {
			event = FUNC4(ulpq);
			if (event) {
				FUNC6(&temp);
				FUNC0(&temp, FUNC2(event));
				FUNC1(ulpq, &temp);
			}
		} while (event);
	}
}