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
struct user_namespace {int /*<<< orphan*/  keyring_name_list; } ;
struct key {char* description; int /*<<< orphan*/  name_link; } ;

/* Variables and functions */
 struct user_namespace* FUNC0 () ; 
 int /*<<< orphan*/  keyring_name_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct key *keyring)
{
	struct user_namespace *ns = FUNC0();

	if (keyring->description &&
	    keyring->description[0] &&
	    keyring->description[0] != '.') {
		FUNC2(&keyring_name_lock);
		FUNC1(&keyring->name_link, &ns->keyring_name_list);
		FUNC3(&keyring_name_lock);
	}
}