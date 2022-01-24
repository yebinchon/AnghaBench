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
struct lapb_cb {int /*<<< orphan*/  condition; int /*<<< orphan*/  vr; int /*<<< orphan*/  state; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  LAPB_ACK_PENDING_CONDITION ; 
 int /*<<< orphan*/  LAPB_POLLOFF ; 
 int /*<<< orphan*/  LAPB_RESPONSE ; 
 int /*<<< orphan*/  LAPB_RR ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lapb_cb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct lapb_cb *lapb)
{
	FUNC0(1, "(%p) S%d TX RR(0) R%d\n",
		 lapb->dev, lapb->state, lapb->vr);
	FUNC1(lapb, LAPB_RR, LAPB_POLLOFF, LAPB_RESPONSE);

	lapb->condition &= ~LAPB_ACK_PENDING_CONDITION;
}