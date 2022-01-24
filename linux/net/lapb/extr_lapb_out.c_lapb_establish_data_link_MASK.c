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
struct lapb_cb {int condition; int mode; int /*<<< orphan*/  state; int /*<<< orphan*/  dev; scalar_t__ n2count; } ;

/* Variables and functions */
 int /*<<< orphan*/  LAPB_COMMAND ; 
 int LAPB_EXTENDED ; 
 int /*<<< orphan*/  LAPB_POLLON ; 
 int /*<<< orphan*/  LAPB_SABM ; 
 int /*<<< orphan*/  LAPB_SABME ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lapb_cb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lapb_cb*) ; 
 int /*<<< orphan*/  FUNC3 (struct lapb_cb*) ; 

void FUNC4(struct lapb_cb *lapb)
{
	lapb->condition = 0x00;
	lapb->n2count   = 0;

	if (lapb->mode & LAPB_EXTENDED) {
		FUNC0(1, "(%p) S%d TX SABME(1)\n", lapb->dev, lapb->state);
		FUNC1(lapb, LAPB_SABME, LAPB_POLLON, LAPB_COMMAND);
	} else {
		FUNC0(1, "(%p) S%d TX SABM(1)\n", lapb->dev, lapb->state);
		FUNC1(lapb, LAPB_SABM, LAPB_POLLON, LAPB_COMMAND);
	}

	FUNC2(lapb);
	FUNC3(lapb);
}