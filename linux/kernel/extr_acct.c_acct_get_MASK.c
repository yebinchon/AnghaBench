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
struct pid_namespace {int /*<<< orphan*/  bacct; } ;
struct bsd_acct_struct {int /*<<< orphan*/  lock; int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bsd_acct_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 struct bsd_acct_struct* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct bsd_acct_struct *FUNC10(struct pid_namespace *ns)
{
	struct bsd_acct_struct *res;
again:
	FUNC8();
	FUNC6();
	res = FUNC9(FUNC0(ns->bacct));
	if (!res) {
		FUNC7();
		return NULL;
	}
	if (!FUNC2(&res->count)) {
		FUNC7();
		FUNC3();
		goto again;
	}
	FUNC7();
	FUNC4(&res->lock);
	if (res != FUNC9(FUNC0(ns->bacct))) {
		FUNC5(&res->lock);
		FUNC1(res);
		goto again;
	}
	return res;
}