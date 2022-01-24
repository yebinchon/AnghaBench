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
struct fscache_cookie {scalar_t__ type; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FSCACHE_COOKIE_ENABLED ; 
 int /*<<< orphan*/  FSCACHE_COOKIE_ENABLEMENT_LOCK ; 
 scalar_t__ FSCACHE_COOKIE_TYPE_INDEX ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (struct fscache_cookie*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct fscache_cookie*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct fscache_cookie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fscache_cookie*,void const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct fscache_cookie*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC10(struct fscache_cookie *cookie,
			     const void *aux_data,
			     loff_t object_size,
			     bool (*can_enable)(void *data),
			     void *data)
{
	FUNC1("%p", cookie);

	FUNC7(cookie);

	FUNC8(&cookie->flags, FSCACHE_COOKIE_ENABLEMENT_LOCK,
			 TASK_UNINTERRUPTIBLE);

	FUNC4(cookie, aux_data);

	if (FUNC6(FSCACHE_COOKIE_ENABLED, &cookie->flags))
		goto out_unlock;

	if (can_enable && !can_enable(data)) {
		/* The netfs decided it didn't want to enable after all */
	} else if (cookie->type != FSCACHE_COOKIE_TYPE_INDEX) {
		/* Wait for outstanding disablement to complete */
		FUNC0(cookie);

		if (FUNC3(cookie, object_size) == 0)
			FUNC5(FSCACHE_COOKIE_ENABLED, &cookie->flags);
	} else {
		FUNC5(FSCACHE_COOKIE_ENABLED, &cookie->flags);
	}

out_unlock:
	FUNC2(FSCACHE_COOKIE_ENABLEMENT_LOCK, &cookie->flags);
	FUNC9(&cookie->flags, FSCACHE_COOKIE_ENABLEMENT_LOCK);
}