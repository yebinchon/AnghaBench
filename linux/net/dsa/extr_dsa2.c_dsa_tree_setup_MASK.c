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
struct dsa_switch_tree {int setup; int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int EEXIST ; 
 int FUNC0 (struct dsa_switch_tree*) ; 
 int FUNC1 (struct dsa_switch_tree*) ; 
 int FUNC2 (struct dsa_switch_tree*) ; 
 int FUNC3 (struct dsa_switch_tree*) ; 
 int /*<<< orphan*/  FUNC4 (struct dsa_switch_tree*) ; 
 int /*<<< orphan*/  FUNC5 (struct dsa_switch_tree*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct dsa_switch_tree *dst)
{
	bool complete;
	int err;

	if (dst->setup) {
		FUNC6("DSA: tree %d already setup! Disjoint trees?\n",
		       dst->index);
		return -EEXIST;
	}

	complete = FUNC2(dst);
	if (!complete)
		return 0;

	err = FUNC0(dst);
	if (err)
		return err;

	err = FUNC3(dst);
	if (err)
		goto teardown_default_cpu;

	err = FUNC1(dst);
	if (err)
		goto teardown_switches;

	dst->setup = true;

	FUNC7("DSA: tree %d setup\n", dst->index);

	return 0;

teardown_switches:
	FUNC5(dst);
teardown_default_cpu:
	FUNC4(dst);

	return err;
}