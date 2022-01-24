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
struct TYPE_2__ {void* s_addr; } ;
struct sockaddr_in {scalar_t__ sin_port; TYPE_1__ sin_addr; void* sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  saddr ;
typedef  int /*<<< orphan*/  daddr ;

/* Variables and functions */
 void* AF_INET ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 int /*<<< orphan*/  INADDR_LOOPBACK ; 
 int /*<<< orphan*/  PORT ; 
 scalar_t__ FUNC0 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,char*) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (void*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(int proto)
{
	struct sockaddr_in  saddr, daddr;
	int fd;

	saddr.sin_family = AF_INET;
	saddr.sin_addr.s_addr = FUNC4(INADDR_ANY);
	saddr.sin_port = 0;

	daddr.sin_family = AF_INET;
	daddr.sin_addr.s_addr = FUNC4(INADDR_LOOPBACK);
	daddr.sin_port = FUNC5(PORT);

	fd = FUNC7(AF_INET, proto, 0);
	if (fd < 0)
		FUNC3(1, errno, "failed to create send socket");

	if (FUNC0(fd, (struct sockaddr *)&saddr, sizeof(saddr)))
		FUNC3(1, errno, "failed to bind send socket");

	if (FUNC2(fd, (struct sockaddr *)&daddr, sizeof(daddr)))
		FUNC3(1, errno, "failed to connect send socket");

	if (FUNC6(fd, "a", 1, 0) < 0)
		FUNC3(1, errno, "failed to send message");

	FUNC1(fd);
}