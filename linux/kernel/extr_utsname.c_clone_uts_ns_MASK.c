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
struct TYPE_2__ {int /*<<< orphan*/ * ops; } ;
struct uts_namespace {int /*<<< orphan*/  user_ns; int /*<<< orphan*/  name; TYPE_1__ ns; struct ucounts* ucounts; } ;
struct user_namespace {int dummy; } ;
struct ucounts {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOSPC ; 
 struct uts_namespace* FUNC0 (int) ; 
 struct uts_namespace* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct ucounts*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct user_namespace*) ; 
 struct ucounts* FUNC5 (struct user_namespace*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct uts_namespace*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uts_ns_cache ; 
 int /*<<< orphan*/  uts_sem ; 
 int /*<<< orphan*/  utsns_operations ; 

__attribute__((used)) static struct uts_namespace *FUNC10(struct user_namespace *user_ns,
					  struct uts_namespace *old_ns)
{
	struct uts_namespace *ns;
	struct ucounts *ucounts;
	int err;

	err = -ENOSPC;
	ucounts = FUNC5(user_ns);
	if (!ucounts)
		goto fail;

	err = -ENOMEM;
	ns = FUNC1();
	if (!ns)
		goto fail_dec;

	err = FUNC8(&ns->ns);
	if (err)
		goto fail_free;

	ns->ucounts = ucounts;
	ns->ns.ops = &utsns_operations;

	FUNC3(&uts_sem);
	FUNC7(&ns->name, &old_ns->name, sizeof(ns->name));
	ns->user_ns = FUNC4(user_ns);
	FUNC9(&uts_sem);
	return ns;

fail_free:
	FUNC6(uts_ns_cache, ns);
fail_dec:
	FUNC2(ucounts);
fail:
	return FUNC0(err);
}