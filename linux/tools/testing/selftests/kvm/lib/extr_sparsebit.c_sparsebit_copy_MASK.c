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
struct sparsebit {int /*<<< orphan*/  num_set; scalar_t__ root; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct sparsebit*) ; 

void FUNC2(struct sparsebit *d, struct sparsebit *s)
{
	/* First clear any bits already set in the destination */
	FUNC1(d);

	if (s->root) {
		d->root = FUNC0(s->root);
		d->num_set = s->num_set;
	}
}