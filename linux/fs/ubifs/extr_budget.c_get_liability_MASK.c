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
struct TYPE_2__ {long long idx_growth; long long data_growth; long long dd_growth; } ;
struct ubifs_info {int /*<<< orphan*/  space_lock; TYPE_1__ bi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static long long FUNC2(struct ubifs_info *c)
{
	long long liab;

	FUNC0(&c->space_lock);
	liab = c->bi.idx_growth + c->bi.data_growth + c->bi.dd_growth;
	FUNC1(&c->space_lock);
	return liab;
}