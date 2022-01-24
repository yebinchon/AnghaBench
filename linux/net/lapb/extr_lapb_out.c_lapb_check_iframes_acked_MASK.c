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
struct lapb_cb {unsigned short vs; unsigned short va; scalar_t__ n2count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lapb_cb*,unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (struct lapb_cb*) ; 
 int /*<<< orphan*/  FUNC2 (struct lapb_cb*) ; 

void FUNC3(struct lapb_cb *lapb, unsigned short nr)
{
	if (lapb->vs == nr) {
		FUNC0(lapb, nr);
		FUNC2(lapb);
		lapb->n2count = 0;
	} else if (lapb->va != nr) {
		FUNC0(lapb, nr);
		FUNC1(lapb);
	}
}