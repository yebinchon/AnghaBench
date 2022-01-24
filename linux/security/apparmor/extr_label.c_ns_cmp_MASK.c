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
struct TYPE_2__ {int /*<<< orphan*/  hname; } ;
struct aa_ns {int level; TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct aa_ns *a, struct aa_ns *b)
{
	int res;

	FUNC0(!a);
	FUNC0(!b);
	FUNC0(!a->base.hname);
	FUNC0(!b->base.hname);

	if (a == b)
		return 0;

	res = a->level - b->level;
	if (res)
		return res;

	return FUNC1(a->base.hname, b->base.hname);
}