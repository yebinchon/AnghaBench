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
struct user_namespace {struct ucounts* ucounts; int /*<<< orphan*/ * ucount_max; } ;
struct ucounts {int /*<<< orphan*/ * ucount; struct user_namespace* ns; } ;
typedef  int /*<<< orphan*/  kuid_t ;
typedef  enum ucount_type { ____Placeholder_ucount_type } ucount_type ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 struct ucounts* FUNC3 (struct user_namespace*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ucounts*) ; 

struct ucounts *FUNC5(struct user_namespace *ns, kuid_t uid,
			   enum ucount_type type)
{
	struct ucounts *ucounts, *iter, *bad;
	struct user_namespace *tns;
	ucounts = FUNC3(ns, uid);
	for (iter = ucounts; iter; iter = tns->ucounts) {
		int max;
		tns = iter->ns;
		max = FUNC0(tns->ucount_max[type]);
		if (!FUNC2(&iter->ucount[type], max))
			goto fail;
	}
	return ucounts;
fail:
	bad = iter;
	for (iter = ucounts; iter != bad; iter = iter->ns->ucounts)
		FUNC1(&iter->ucount[type]);

	FUNC4(ucounts);
	return NULL;
}