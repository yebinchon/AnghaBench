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
struct cred {int /*<<< orphan*/ * process_keyring; int /*<<< orphan*/ * thread_keyring; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct cred* FUNC1 () ; 

struct cred *FUNC2(void)
{
	struct cred *new;

	new = FUNC1();
	if (!new)
		return new;

#ifdef CONFIG_KEYS
	/* newly exec'd tasks don't get a thread keyring */
	key_put(new->thread_keyring);
	new->thread_keyring = NULL;

	/* inherit the session keyring; new process keyring */
	key_put(new->process_keyring);
	new->process_keyring = NULL;
#endif

	return new;
}