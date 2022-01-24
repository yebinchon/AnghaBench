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
struct inet_peer_base {scalar_t__ total; int /*<<< orphan*/  lock; int /*<<< orphan*/  rb_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  RB_ROOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(struct inet_peer_base *bp)
{
	bp->rb_root = RB_ROOT;
	FUNC0(&bp->lock);
	bp->total = 0;
}