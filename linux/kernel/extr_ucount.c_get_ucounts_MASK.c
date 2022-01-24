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
struct user_namespace {int dummy; } ;
struct ucounts {scalar_t__ count; int /*<<< orphan*/  node; int /*<<< orphan*/  uid; struct user_namespace* ns; } ;
struct hlist_head {int dummy; } ;
typedef  int /*<<< orphan*/  kuid_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ INT_MAX ; 
 struct ucounts* FUNC0 (struct user_namespace*,int /*<<< orphan*/ ,struct hlist_head*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct hlist_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct ucounts*) ; 
 struct ucounts* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct hlist_head* FUNC6 (struct user_namespace*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ucounts_lock ; 

__attribute__((used)) static struct ucounts *FUNC7(struct user_namespace *ns, kuid_t uid)
{
	struct hlist_head *hashent = FUNC6(ns, uid);
	struct ucounts *ucounts, *new;

	FUNC4(&ucounts_lock);
	ucounts = FUNC0(ns, uid, hashent);
	if (!ucounts) {
		FUNC5(&ucounts_lock);

		new = FUNC3(sizeof(*new), GFP_KERNEL);
		if (!new)
			return NULL;

		new->ns = ns;
		new->uid = uid;
		new->count = 0;

		FUNC4(&ucounts_lock);
		ucounts = FUNC0(ns, uid, hashent);
		if (ucounts) {
			FUNC2(new);
		} else {
			FUNC1(&new->node, hashent);
			ucounts = new;
		}
	}
	if (ucounts->count == INT_MAX)
		ucounts = NULL;
	else
		ucounts->count += 1;
	FUNC5(&ucounts_lock);
	return ucounts;
}