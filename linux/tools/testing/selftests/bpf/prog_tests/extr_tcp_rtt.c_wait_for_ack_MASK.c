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
struct tcp_info {scalar_t__ tcpi_unacked; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  info ;

/* Variables and functions */
 int /*<<< orphan*/  SOL_TCP ; 
 int /*<<< orphan*/  TCP_INFO ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tcp_info*,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(int fd, int retries)
{
	struct tcp_info info;
	socklen_t optlen;
	int i, err;

	for (i = 0; i < retries; i++) {
		optlen = sizeof(info);
		err = FUNC0(fd, SOL_TCP, TCP_INFO, &info, &optlen);
		if (err < 0) {
			FUNC1("Failed to lookup TCP stats");
			return err;
		}

		if (info.tcpi_unacked == 0)
			return 0;

		FUNC2(10);
	}

	FUNC1("Did not receive ACK");
	return -1;
}