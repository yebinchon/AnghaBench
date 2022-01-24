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
struct mei {int /*<<< orphan*/  fd; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (struct mei*) ; 
 int /*<<< orphan*/  FUNC1 (struct mei*,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mei*,char*,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,unsigned char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC5(struct mei *me, unsigned char *buffer,
			ssize_t len, unsigned long timeout)
{
	ssize_t rc;

	FUNC2(me, "call read length = %zd\n", len);

	rc = FUNC3(me->fd, buffer, len);
	if (rc < 0) {
		FUNC1(me, "read failed with status %zd %s\n",
				rc, FUNC4(errno));
		FUNC0(me);
	} else {
		FUNC2(me, "read succeeded with result %zd\n", rc);
	}
	return rc;
}