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
struct tfrc_loss_hist {scalar_t__ counter; int /*<<< orphan*/ ** ring; } ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__) ; 
 scalar_t__ LIH_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tfrc_loss_hist*) ; 
 int /*<<< orphan*/  tfrc_lh_slab ; 

void FUNC3(struct tfrc_loss_hist *lh)
{
	if (!FUNC2(lh))
		return;

	for (lh->counter = 0; lh->counter < LIH_SIZE; lh->counter++)
		if (lh->ring[FUNC0(lh->counter)] != NULL) {
			FUNC1(tfrc_lh_slab,
					lh->ring[FUNC0(lh->counter)]);
			lh->ring[FUNC0(lh->counter)] = NULL;
		}
}