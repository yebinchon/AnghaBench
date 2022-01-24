#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct user_namespace {int dummy; } ;
struct ucounts {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * ops; } ;
struct ipc_namespace {TYPE_1__ ns; int /*<<< orphan*/  user_ns; struct ucounts* ucounts; int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOSPC ; 
 struct ipc_namespace* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct ucounts*) ; 
 int /*<<< orphan*/  FUNC2 (struct user_namespace*) ; 
 struct ucounts* FUNC3 (struct user_namespace*) ; 
 int /*<<< orphan*/  ipcns_operations ; 
 int /*<<< orphan*/  FUNC4 (struct ipc_namespace*) ; 
 struct ipc_namespace* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ipc_namespace*) ; 
 int /*<<< orphan*/  FUNC7 (struct ipc_namespace*) ; 
 int FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (struct ipc_namespace*) ; 
 int /*<<< orphan*/  FUNC13 (struct ipc_namespace*) ; 

__attribute__((used)) static struct ipc_namespace *FUNC14(struct user_namespace *user_ns,
					   struct ipc_namespace *old_ns)
{
	struct ipc_namespace *ns;
	struct ucounts *ucounts;
	int err;

	err = -ENOSPC;
	ucounts = FUNC3(user_ns);
	if (!ucounts)
		goto fail;

	err = -ENOMEM;
	ns = FUNC5(sizeof(struct ipc_namespace), GFP_KERNEL);
	if (ns == NULL)
		goto fail_dec;

	err = FUNC8(&ns->ns);
	if (err)
		goto fail_free;
	ns->ns.ops = &ipcns_operations;

	FUNC11(&ns->count, 1);
	ns->user_ns = FUNC2(user_ns);
	ns->ucounts = ucounts;

	err = FUNC6(ns);
	if (err)
		goto fail_put;

	FUNC12(ns);
	FUNC7(ns);
	FUNC13(ns);

	return ns;

fail_put:
	FUNC10(ns->user_ns);
	FUNC9(&ns->ns);
fail_free:
	FUNC4(ns);
fail_dec:
	FUNC1(ucounts);
fail:
	return FUNC0(err);
}