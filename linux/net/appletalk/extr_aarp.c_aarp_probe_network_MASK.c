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
struct atalk_iface {int status; int /*<<< orphan*/  address; TYPE_1__* dev; } ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 unsigned int AARP_RETRANSMIT_LIMIT ; 
 scalar_t__ ARPHRD_LOCALTLK ; 
 scalar_t__ ARPHRD_PPP ; 
 int ATIF_PROBE_FAIL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct atalk_iface*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void FUNC3(struct atalk_iface *atif)
{
	if (atif->dev->type == ARPHRD_LOCALTLK ||
	    atif->dev->type == ARPHRD_PPP)
		FUNC1(atif);
	else {
		unsigned int count;

		for (count = 0; count < AARP_RETRANSMIT_LIMIT; count++) {
			FUNC0(atif->dev, &atif->address);

			/* Defer 1/10th */
			FUNC2(100);

			if (atif->status & ATIF_PROBE_FAIL)
				break;
		}
	}
}