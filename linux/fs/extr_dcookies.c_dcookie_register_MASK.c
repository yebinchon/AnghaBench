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
struct dcookie_user {int /*<<< orphan*/  next; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  dcookie_mutex ; 
 int /*<<< orphan*/  dcookie_users ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct dcookie_user*) ; 
 struct dcookie_user* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

struct dcookie_user * FUNC7(void)
{
	struct dcookie_user * user;

	FUNC5(&dcookie_mutex);

	user = FUNC3(sizeof(struct dcookie_user), GFP_KERNEL);
	if (!user)
		goto out;

	if (!FUNC1() && FUNC0())
		goto out_free;

	FUNC4(&user->next, &dcookie_users);

out:
	FUNC6(&dcookie_mutex);
	return user;
out_free:
	FUNC2(user);
	user = NULL;
	goto out;
}