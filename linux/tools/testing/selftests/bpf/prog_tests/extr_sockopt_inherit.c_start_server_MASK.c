#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int CUSTOM_INHERIT1 ; 
 int CUSTOM_LISTENER ; 
 int /*<<< orphan*/  INADDR_LOOPBACK ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_CUSTOM ; 
 scalar_t__ FUNC0 (int,struct sockaddr const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int,char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(void)
{
	struct sockaddr_in addr = {
		.sin_family = AF_INET,
		.sin_addr.s_addr = FUNC2(INADDR_LOOPBACK),
	};
	char buf;
	int err;
	int fd;
	int i;

	fd = FUNC5(AF_INET, SOCK_STREAM, 0);
	if (fd < 0) {
		FUNC3("Failed to create server socket");
		return -1;
	}

	for (i = CUSTOM_INHERIT1; i <= CUSTOM_LISTENER; i++) {
		buf = 0x01;
		err = FUNC4(fd, SOL_CUSTOM, i, &buf, 1);
		if (err) {
			FUNC3("Failed to call setsockopt(%d)", i);
			FUNC1(fd);
			return -1;
		}
	}

	if (FUNC0(fd, (const struct sockaddr *)&addr, sizeof(addr)) < 0) {
		FUNC3("Failed to bind socket");
		FUNC1(fd);
		return -1;
	}

	return fd;
}