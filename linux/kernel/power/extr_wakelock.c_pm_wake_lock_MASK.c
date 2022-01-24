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
typedef  scalar_t__ u64 ;
struct wakelock {int /*<<< orphan*/  ws; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_BLOCK_SUSPEND ; 
 int EINVAL ; 
 int EPERM ; 
 scalar_t__ FUNC0 (struct wakelock*) ; 
 scalar_t__ NSEC_PER_MSEC ; 
 int FUNC1 (struct wakelock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char const) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 
 struct wakelock* FUNC11 (char const*,size_t,int) ; 
 int /*<<< orphan*/  wakelocks_lock ; 
 int /*<<< orphan*/  FUNC12 (struct wakelock*) ; 

int FUNC13(const char *buf)
{
	const char *str = buf;
	struct wakelock *wl;
	u64 timeout_ns = 0;
	size_t len;
	int ret = 0;

	if (!FUNC4(CAP_BLOCK_SUSPEND))
		return -EPERM;

	while (*str && !FUNC6(*str))
		str++;

	len = str - buf;
	if (!len)
		return -EINVAL;

	if (*str && *str != '\n') {
		/* Find out if there's a valid timeout string appended. */
		ret = FUNC7(FUNC10(str), 10, &timeout_ns);
		if (ret)
			return -EINVAL;
	}

	FUNC8(&wakelocks_lock);

	wl = FUNC11(buf, len, true);
	if (FUNC0(wl)) {
		ret = FUNC1(wl);
		goto out;
	}
	if (timeout_ns) {
		u64 timeout_ms = timeout_ns + NSEC_PER_MSEC - 1;

		FUNC5(timeout_ms, NSEC_PER_MSEC);
		FUNC3(wl->ws, timeout_ms);
	} else {
		FUNC2(wl->ws);
	}

	FUNC12(wl);

 out:
	FUNC9(&wakelocks_lock);
	return ret;
}