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
struct timeval {unsigned long tv_sec; unsigned long tv_usec; } ;
struct mei {scalar_t__ fd; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (struct mei*) ; 
 int /*<<< orphan*/  FUNC4 (struct mei*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct mei*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,unsigned char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC9(struct mei *me, const unsigned char *buffer,
			ssize_t len, unsigned long timeout)
{
	struct timeval tv;
	ssize_t written;
	ssize_t rc;
	fd_set set;

	tv.tv_sec = timeout / 1000;
	tv.tv_usec = (timeout % 1000) * 1000000;

	FUNC5(me, "call write length = %zd\n", len);

	written = FUNC8(me->fd, buffer, len);
	if (written < 0) {
		rc = -errno;
		FUNC4(me, "write failed with status %zd %s\n",
			written, FUNC7(errno));
		goto out;
	}

	FUNC2(&set);
	FUNC1(me->fd, &set);
	rc = FUNC6(me->fd + 1 , &set, NULL, NULL, &tv);
	if (rc > 0 && FUNC0(me->fd, &set)) {
		FUNC5(me, "write success\n");
	} else if (rc == 0) {
		FUNC4(me, "write failed on timeout with status\n");
		goto out;
	} else { /* rc < 0 */
		FUNC4(me, "write failed on select with status %zd\n", rc);
		goto out;
	}

	rc = written;
out:
	if (rc < 0)
		FUNC3(me);

	return rc;
}