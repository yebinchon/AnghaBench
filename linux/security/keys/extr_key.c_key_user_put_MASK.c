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
struct key_user {int /*<<< orphan*/  node; int /*<<< orphan*/  usage; } ;

/* Variables and functions */
 int /*<<< orphan*/  key_user_lock ; 
 int /*<<< orphan*/  key_user_tree ; 
 int /*<<< orphan*/  FUNC0 (struct key_user*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct key_user *user)
{
	if (FUNC2(&user->usage, &key_user_lock)) {
		FUNC1(&user->node, &key_user_tree);
		FUNC3(&key_user_lock);

		FUNC0(user);
	}
}