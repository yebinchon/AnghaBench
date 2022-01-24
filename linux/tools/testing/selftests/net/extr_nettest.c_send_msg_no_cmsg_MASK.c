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
typedef  int /*<<< orphan*/  socklen_t ;

/* Variables and functions */
 scalar_t__ EACCES ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  msg ; 
 int /*<<< orphan*/  msglen ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ try_broadcast ; 

__attribute__((used)) static int FUNC3(int sd, void *addr, socklen_t alen)
{
	int err;

again:
	err = FUNC1(sd, msg, msglen, 0, addr, alen);
	if (err < 0) {
		if (errno == EACCES && try_broadcast) {
			try_broadcast = 0;
			if (!FUNC2(sd))
				goto again;
			errno = EACCES;
		}

		FUNC0("sendto failed");
		return 1;
	}

	return 0;
}