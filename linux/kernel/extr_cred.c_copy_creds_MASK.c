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
struct task_struct {struct cred* real_cred; struct cred* cred; int /*<<< orphan*/ * cached_requested_key; } ;
struct cred {TYPE_1__* user; int /*<<< orphan*/ * process_keyring; int /*<<< orphan*/ * thread_keyring; int /*<<< orphan*/  usage; } ;
struct TYPE_2__ {int /*<<< orphan*/  processes; } ;

/* Variables and functions */
 unsigned long CLONE_NEWUSER ; 
 unsigned long CLONE_THREAD ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct cred*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct cred*) ; 
 void* FUNC4 (struct cred*) ; 
 int /*<<< orphan*/  FUNC5 (struct cred*) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct cred*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct cred* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct cred*) ; 
 int /*<<< orphan*/  FUNC10 (struct cred*) ; 
 int /*<<< orphan*/  FUNC11 (struct cred*) ; 

int FUNC12(struct task_struct *p, unsigned long clone_flags)
{
	struct cred *new;
	int ret;

#ifdef CONFIG_KEYS_REQUEST_CACHE
	p->cached_requested_key = NULL;
#endif

	if (
#ifdef CONFIG_KEYS
		!p->cred->thread_keyring &&
#endif
		clone_flags & CLONE_THREAD
	    ) {
		p->real_cred = FUNC4(p->cred);
		FUNC4(p->cred);
		FUNC0(p->cred, 2);
		FUNC6("share_creds(%p{%d,%d})",
		       p->cred, FUNC2(&p->cred->usage),
		       FUNC10(p->cred));
		FUNC1(&p->cred->user->processes);
		return 0;
	}

	new = FUNC8();
	if (!new)
		return -ENOMEM;

	if (clone_flags & CLONE_NEWUSER) {
		ret = FUNC3(new);
		if (ret < 0)
			goto error_put;
	}

#ifdef CONFIG_KEYS
	/* new threads get their own thread keyrings if their parent already
	 * had one */
	if (new->thread_keyring) {
		key_put(new->thread_keyring);
		new->thread_keyring = NULL;
		if (clone_flags & CLONE_THREAD)
			install_thread_keyring_to_cred(new);
	}

	/* The process keyring is only shared between the threads in a process;
	 * anything outside of those threads doesn't inherit.
	 */
	if (!(clone_flags & CLONE_THREAD)) {
		key_put(new->process_keyring);
		new->process_keyring = NULL;
	}
#endif

	FUNC1(&new->user->processes);
	p->cred = p->real_cred = FUNC4(new);
	FUNC0(new, 2);
	FUNC11(new);
	return 0;

error_put:
	FUNC9(new);
	return ret;
}