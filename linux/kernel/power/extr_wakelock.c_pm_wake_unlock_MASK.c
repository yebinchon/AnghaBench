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
struct wakelock {int /*<<< orphan*/  ws; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_BLOCK_SUSPEND ; 
 int EINVAL ; 
 int EPERM ; 
 scalar_t__ FUNC0 (struct wakelock*) ; 
 int FUNC1 (struct wakelock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 size_t FUNC6 (char const*) ; 
 struct wakelock* FUNC7 (char const*,size_t,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  wakelocks_lock ; 
 int /*<<< orphan*/  FUNC9 (struct wakelock*) ; 

int FUNC10(const char *buf)
{
	struct wakelock *wl;
	size_t len;
	int ret = 0;

	if (!FUNC3(CAP_BLOCK_SUSPEND))
		return -EPERM;

	len = FUNC6(buf);
	if (!len)
		return -EINVAL;

	if (buf[len-1] == '\n')
		len--;

	if (!len)
		return -EINVAL;

	FUNC4(&wakelocks_lock);

	wl = FUNC7(buf, len, false);
	if (FUNC0(wl)) {
		ret = FUNC1(wl);
		goto out;
	}
	FUNC2(wl->ws);

	FUNC9(wl);
	FUNC8();

 out:
	FUNC5(&wakelocks_lock);
	return ret;
}