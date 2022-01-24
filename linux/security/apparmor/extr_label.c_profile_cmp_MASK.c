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
struct TYPE_2__ {scalar_t__ hname; } ;
struct aa_profile {TYPE_1__ base; int /*<<< orphan*/  ns; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct aa_profile *a, struct aa_profile *b)
{
	int res;

	FUNC0(!a);
	FUNC0(!b);
	FUNC0(!a->ns);
	FUNC0(!b->ns);
	FUNC0(!a->base.hname);
	FUNC0(!b->base.hname);

	if (a == b || a->base.hname == b->base.hname)
		return 0;
	res = FUNC1(a->ns, b->ns);
	if (res)
		return res;

	return FUNC2(a->base.hname, b->base.hname);
}