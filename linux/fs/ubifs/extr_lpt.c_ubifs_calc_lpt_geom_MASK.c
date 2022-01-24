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
struct ubifs_info {int lpt_sz; scalar_t__ leb_size; int lpt_lebs; scalar_t__ ltab_sz; int /*<<< orphan*/  big_lpt; int /*<<< orphan*/  check_lpt_free; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_info*,char*) ; 

int FUNC3(struct ubifs_info *c)
{
	int lebs_needed;
	long long sz;

	FUNC1(c);

	/* Verify that lpt_lebs is big enough */
	sz = c->lpt_sz * 2; /* Must have at least 2 times the size */
	lebs_needed = FUNC0(sz + c->leb_size - 1, c->leb_size);
	if (lebs_needed > c->lpt_lebs) {
		FUNC2(c, "too few LPT LEBs");
		return -EINVAL;
	}

	/* Verify that ltab fits in a single LEB (since ltab is a single node */
	if (c->ltab_sz > c->leb_size) {
		FUNC2(c, "LPT ltab too big");
		return -EINVAL;
	}

	c->check_lpt_free = c->big_lpt;
	return 0;
}