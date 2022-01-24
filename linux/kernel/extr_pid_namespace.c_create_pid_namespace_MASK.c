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
struct user_namespace {int dummy; } ;
struct ucounts {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * ops; } ;
struct pid_namespace {int level; int /*<<< orphan*/  idr; int /*<<< orphan*/  proc_work; int /*<<< orphan*/  pid_allocated; struct ucounts* ucounts; int /*<<< orphan*/  user_ns; int /*<<< orphan*/  parent; int /*<<< orphan*/  kref; TYPE_1__ ns; int /*<<< orphan*/ * pid_cachep; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ENOSPC ; 
 struct pid_namespace* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned int MAX_PID_NS_LEVEL ; 
 int /*<<< orphan*/  PIDNS_ADDING ; 
 int /*<<< orphan*/ * FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct ucounts*) ; 
 int /*<<< orphan*/  FUNC4 (struct pid_namespace*) ; 
 int /*<<< orphan*/  FUNC5 (struct user_namespace*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct user_namespace*) ; 
 struct ucounts* FUNC9 (struct user_namespace*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct pid_namespace*) ; 
 struct pid_namespace* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  pid_ns_cachep ; 
 int /*<<< orphan*/  pidns_operations ; 
 int /*<<< orphan*/  proc_cleanup_work ; 

__attribute__((used)) static struct pid_namespace *FUNC14(struct user_namespace *user_ns,
	struct pid_namespace *parent_pid_ns)
{
	struct pid_namespace *ns;
	unsigned int level = parent_pid_ns->level + 1;
	struct ucounts *ucounts;
	int err;

	err = -EINVAL;
	if (!FUNC8(parent_pid_ns->user_ns, user_ns))
		goto out;

	err = -ENOSPC;
	if (level > MAX_PID_NS_LEVEL)
		goto out;
	ucounts = FUNC9(user_ns);
	if (!ucounts)
		goto out;

	err = -ENOMEM;
	ns = FUNC11(pid_ns_cachep, GFP_KERNEL);
	if (ns == NULL)
		goto out_dec;

	FUNC7(&ns->idr);

	ns->pid_cachep = FUNC2(level);
	if (ns->pid_cachep == NULL)
		goto out_free_idr;

	err = FUNC13(&ns->ns);
	if (err)
		goto out_free_idr;
	ns->ns.ops = &pidns_operations;

	FUNC12(&ns->kref);
	ns->level = level;
	ns->parent = FUNC4(parent_pid_ns);
	ns->user_ns = FUNC5(user_ns);
	ns->ucounts = ucounts;
	ns->pid_allocated = PIDNS_ADDING;
	FUNC1(&ns->proc_work, proc_cleanup_work);

	return ns;

out_free_idr:
	FUNC6(&ns->idr);
	FUNC10(pid_ns_cachep, ns);
out_dec:
	FUNC3(ucounts);
out:
	return FUNC0(err);
}