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
struct inet_hashinfo {int lhash2_mask; TYPE_1__* lhash2; } ;
struct TYPE_2__ {scalar_t__ count; int /*<<< orphan*/  head; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct inet_hashinfo *h)
{
	int i;

	for (i = 0; i <= h->lhash2_mask; i++) {
		FUNC1(&h->lhash2[i].lock);
		FUNC0(&h->lhash2[i].head);
		h->lhash2[i].count = 0;
	}
}