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

/* Variables and functions */
 scalar_t__ EINVAL ; 
 int MS_BIND ; 
 int MS_PRIVATE ; 
 int MS_REC ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC0 (char const*,char const*,char const*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,char*,char const*,char const*,...) ; 
 char* FUNC2 (scalar_t__) ; 

__attribute__((used)) static int
FUNC3(const char *target, const char *type, char *buff, size_t bufflen)
{
	bool bind_done = false;

	while (FUNC0("", target, "none", MS_PRIVATE | MS_REC, NULL)) {
		if (errno != EINVAL || bind_done) {
			FUNC1(buff, bufflen,
				 "mount --make-private %s failed: %s",
				 target, FUNC2(errno));
			return -1;
		}

		if (FUNC0(target, target, "none", MS_BIND, NULL)) {
			FUNC1(buff, bufflen,
				 "mount --bind %s %s failed: %s",
				 target, target, FUNC2(errno));
			return -1;
		}

		bind_done = true;
	}

	if (FUNC0(type, target, type, 0, "mode=0700")) {
		FUNC1(buff, bufflen, "mount -t %s %s %s failed: %s",
			 type, type, target, FUNC2(errno));
		return -1;
	}

	return 0;
}