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
struct user_namespace {int /*<<< orphan*/  persistent_keyring_register; int /*<<< orphan*/  user_keyring_register; int /*<<< orphan*/  keyring_name_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  keyring_name_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct user_namespace *ns)
{
	FUNC2(&keyring_name_lock);
	FUNC1(&ns->keyring_name_list);
	FUNC3(&keyring_name_lock);

	FUNC0(ns->user_keyring_register);
#ifdef CONFIG_PERSISTENT_KEYRINGS
	key_put(ns->persistent_keyring_register);
#endif
}