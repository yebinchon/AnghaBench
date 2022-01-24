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
struct uhid_event {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  ev ;

/* Variables and functions */
 int EFAULT ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC1 (int,struct uhid_event const*,int) ; 

__attribute__((used)) static int FUNC2(int fd, const struct uhid_event *ev)
{
	ssize_t ret;

	ret = FUNC1(fd, ev, sizeof(*ev));
	if (ret < 0) {
		FUNC0(stderr, "Cannot write to uhid: %m\n");
		return -errno;
	} else if (ret != sizeof(*ev)) {
		FUNC0(stderr, "Wrong size written to uhid: %zd != %lu\n",
			ret, sizeof(ev));
		return -EFAULT;
	} else {
		return 0;
	}
}