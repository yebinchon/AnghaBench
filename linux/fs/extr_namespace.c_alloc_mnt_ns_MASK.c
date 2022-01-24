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
struct mnt_namespace {struct ucounts* ucounts; int /*<<< orphan*/  user_ns; int /*<<< orphan*/  poll; int /*<<< orphan*/  list; int /*<<< orphan*/  count; int /*<<< orphan*/  seq; TYPE_1__ ns; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOSPC ; 
 struct mnt_namespace* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ucounts*) ; 
 int /*<<< orphan*/  FUNC5 (struct user_namespace*) ; 
 struct ucounts* FUNC6 (struct user_namespace*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct mnt_namespace*) ; 
 struct mnt_namespace* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mnt_ns_seq ; 
 int /*<<< orphan*/  mntns_operations ; 
 int FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static struct mnt_namespace *FUNC11(struct user_namespace *user_ns, bool anon)
{
	struct mnt_namespace *new_ns;
	struct ucounts *ucounts;
	int ret;

	ucounts = FUNC6(user_ns);
	if (!ucounts)
		return FUNC0(-ENOSPC);

	new_ns = FUNC9(sizeof(struct mnt_namespace), GFP_KERNEL);
	if (!new_ns) {
		FUNC4(ucounts);
		return FUNC0(-ENOMEM);
	}
	if (!anon) {
		ret = FUNC10(&new_ns->ns);
		if (ret) {
			FUNC8(new_ns);
			FUNC4(ucounts);
			return FUNC0(ret);
		}
	}
	new_ns->ns.ops = &mntns_operations;
	if (!anon)
		new_ns->seq = FUNC2(1, &mnt_ns_seq);
	FUNC3(&new_ns->count, 1);
	FUNC1(&new_ns->list);
	FUNC7(&new_ns->poll);
	new_ns->user_ns = FUNC5(user_ns);
	new_ns->ucounts = ucounts;
	return new_ns;
}