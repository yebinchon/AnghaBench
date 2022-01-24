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
struct user_namespace {struct key* persistent_keyring_register; } ;
struct key {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct key*) ; 
 int /*<<< orphan*/  KEY_ALLOC_NOT_IN_QUOTA ; 
 int KEY_POS_ALL ; 
 int KEY_POS_SETATTR ; 
 int KEY_USR_READ ; 
 int KEY_USR_VIEW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct key*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct key* FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct user_namespace *ns)
{
	struct key *reg = FUNC5(".persistent_register",
					FUNC2(0), FUNC1(0),
					FUNC4(),
					((KEY_POS_ALL & ~KEY_POS_SETATTR) |
					 KEY_USR_VIEW | KEY_USR_READ),
					KEY_ALLOC_NOT_IN_QUOTA, NULL, NULL);
	if (FUNC0(reg))
		return FUNC3(reg);

	ns->persistent_keyring_register = reg;
	return 0;
}