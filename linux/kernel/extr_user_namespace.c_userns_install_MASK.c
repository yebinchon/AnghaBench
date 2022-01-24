#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct user_namespace {int dummy; } ;
struct nsproxy {int dummy; } ;
struct ns_common {int dummy; } ;
struct cred {int /*<<< orphan*/  user_ns; } ;
struct TYPE_5__ {TYPE_1__* fs; } ;
struct TYPE_4__ {int users; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPERM ; 
 int FUNC0 (struct cred*) ; 
 TYPE_2__* current ; 
 struct user_namespace* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct user_namespace*) ; 
 int /*<<< orphan*/  FUNC3 (struct user_namespace*,int /*<<< orphan*/ ) ; 
 struct cred* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cred*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 struct user_namespace* FUNC8 (struct ns_common*) ; 

__attribute__((used)) static int FUNC9(struct nsproxy *nsproxy, struct ns_common *ns)
{
	struct user_namespace *user_ns = FUNC8(ns);
	struct cred *cred;

	/* Don't allow gaining capabilities by reentering
	 * the same user namespace.
	 */
	if (user_ns == FUNC1())
		return -EINVAL;

	/* Tasks that share a thread group must share a user namespace */
	if (!FUNC7(current))
		return -EINVAL;

	if (current->fs->users != 1)
		return -EINVAL;

	if (!FUNC3(user_ns, CAP_SYS_ADMIN))
		return -EPERM;

	cred = FUNC4();
	if (!cred)
		return -ENOMEM;

	FUNC5(cred->user_ns);
	FUNC6(cred, FUNC2(user_ns));

	return FUNC0(cred);
}