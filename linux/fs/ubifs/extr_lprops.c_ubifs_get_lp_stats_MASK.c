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
struct ubifs_lp_stats {int dummy; } ;
struct ubifs_info {int /*<<< orphan*/  space_lock; int /*<<< orphan*/  lst; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ubifs_lp_stats*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct ubifs_info *c, struct ubifs_lp_stats *lst)
{
	FUNC1(&c->space_lock);
	FUNC0(lst, &c->lst, sizeof(struct ubifs_lp_stats));
	FUNC2(&c->space_lock);
}