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
struct lapb_cb {int condition; } ;

/* Variables and functions */
 int LAPB_ACK_PENDING_CONDITION ; 
 struct lapb_cb* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct lapb_cb* lapb ; 
 int /*<<< orphan*/  FUNC1 (struct lapb_cb*) ; 
 int /*<<< orphan*/  t2timer ; 

__attribute__((used)) static void FUNC2(struct timer_list *t)
{
	struct lapb_cb *lapb = FUNC0(lapb, t, t2timer);

	if (lapb->condition & LAPB_ACK_PENDING_CONDITION) {
		lapb->condition &= ~LAPB_ACK_PENDING_CONDITION;
		FUNC1(lapb);
	}
}